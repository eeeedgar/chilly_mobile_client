import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:chilly_mobile_client/features/activities/domain/activity_cubit.dart';
import 'package:chilly_mobile_client/features/activities/domain/activity_meta.dart';
import 'package:chilly_mobile_client/features/activities/presentation/compoments/tag_chip.dart';
import 'package:chilly_mobile_client/features/user/domain/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewActivityModal extends StatefulWidget {
  const ViewActivityModal({
    super.key,
    required this.meta,
  });

  final ActivityMeta meta;

  @override
  State<ViewActivityModal> createState() => _ViewActivityModalState();
}

class _ViewActivityModalState extends State<ViewActivityModal> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _Row(name: 'Title', value: widget.meta.event.title),
              const SizedBox(
                height: 20,
              ),
              _Row(name: 'from', value: widget.meta.event.startTime.formatE()),
              const SizedBox(
                height: 20,
              ),
              _Row(name: 'to', value: widget.meta.event.finishTime.formatE()),
              const SizedBox(
                height: 20,
              ),
              _Row(name: 'Description', value: widget.meta.event.description),
              SizedBox(
                height: 60,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.meta.event.tags.length,
                    itemBuilder: (context, index) {
                      return TagChip(
                          name: widget.meta.event.tags.elementAt(index).title);
                    }),
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.meta.event.pictures.length,
                    itemBuilder: (context, index) {
                      return _Image(
                          widget.meta.event.pictures.elementAt(index));
                    }),
              ),
              if (widget.meta.isActive && !widget.meta.isFavorite)
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<ActivityCubit>()
                        .addToFavorites(widget.meta.event.id)
                        .whenComplete(
                          () => context.read<ActivityCubit>().fetchActivities,
                        );
                  },
                  child: Text(
                    'I will go'.toUpperCase(),
                    style: AppTextStyle.button,
                  ),
                ),
              if (widget.meta.isFavorite)
                ElevatedButton(
                  onPressed: () {
                    // todo: scope
                  },
                  child: Text(
                    'Remove from favorites'.toUpperCase(),
                    style: AppTextStyle.button,
                  ),
                ),
              if (widget.meta.isOwn)
                ElevatedButton(
                  onPressed: () {
                    // todo: scope
                  },
                  child: Text(
                    'Edit'.toUpperCase(),
                    style: AppTextStyle.button,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

class _Row extends StatelessWidget {
  const _Row({
    required this.name,
    required this.value,
  });

  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: AppTextStyle.subtext,
        ),
        Text(
          value,
          style: AppTextStyle.body,
        ),
      ],
    );
  }
}

extension DateTimeFormat on DateTime {
  String formatE() {
    return '${hour < 10 ? '0$hour' : hour}:${minute < 10 ? '0$minute' : minute} ${toString().split(' ')[0].replaceAll('-', '/')}';
  }
}

class _Image extends StatelessWidget {
  const _Image(this.path);

  final String path;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => Dialog.fullscreen(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Image.network(
                          path,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ));
          },
          child: SizedBox(
            height: 100,
            width: 100,
            child: Image.network(
              path,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
