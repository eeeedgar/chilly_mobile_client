import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:chilly_mobile_client/features/activities/domain/activity_entity.dart';
import 'package:chilly_mobile_client/features/user/domain/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewActivityModal extends StatefulWidget {
  const ViewActivityModal({
    super.key,
    required this.activity,
  });

  final ActivityEntity activity;

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
              _Row(name: 'Title', value: widget.activity.title),
              const SizedBox(
                height: 20,
              ),
              // _Row(name: 'Address', value: widget.activity.address!),
              // const SizedBox(
              //   height: 20,
              // ),
              _Row(name: 'from', value: widget.activity.startTime.formatE()),
              const SizedBox(
                height: 20,
              ),
              _Row(name: 'to', value: widget.activity.finishTime.formatE()),
              const SizedBox(
                height: 20,
              ),
              _Row(name: 'Description', value: widget.activity.description),
              const SizedBox(
                height: 20,
              ),
              // SizedBox(
              //   height: 40,
              //   child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: widget.activity.tags!.length,
              //       itemBuilder: (context, index) {
              //         return TagChip(
              //             name: widget.activity.tags!.elementAt(index));
              //       }),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    _Image('assets/jpg/party.jpg'),
                    _Image('assets/jpg/party-2.jpg'),
                    _Image('assets/jpg/lights.jpg'),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // context.read<UserCubit>().isInFavorites(widget.activity.id!)
              //     ? ElevatedButton(
              //         onPressed: () {
              //           context
              //               .read<UserCubit>()
              //               .removeFromFavorites(widget.activity.id!);
              //         },
              //         child: const Text('Remove from favorites'),
              //       )
              //     : ElevatedButton(
              //         onPressed: () {
              //           context
              //               .read<UserCubit>()
              //               .addToFavorites(widget.activity.id!);
              //         },
              //         child: Text(
              //           'I will go'.toUpperCase(),
              //           style: AppTextStyle.button,
              //         ),
              //       ),
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
          style: AppTextStyle.body,
        ),
        Text(
          value,
          style: AppTextStyle.bodyHighlight,
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
                        child: Image.asset(
                          path,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ));
          },
          child: SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(
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
