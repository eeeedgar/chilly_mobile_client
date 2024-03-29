import 'package:auto_route/auto_route.dart';
import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:chilly_mobile_client/app/di/config.dart';
import 'package:chilly_mobile_client/features/activities/data/update_activity_dto.dart';
import 'package:chilly_mobile_client/features/activities/domain/activity_cubit.dart';
import 'package:chilly_mobile_client/features/activities/domain/activity_entity.dart';
import 'package:chilly_mobile_client/features/activities/domain/tag_entity.dart';
import 'package:chilly_mobile_client/features/activities/presentation/compoments/tag_chip.dart';
import 'package:chilly_mobile_client/features/map/presentation/components/info_input.dart';
import 'package:chilly_mobile_client/features/user/domain/user_change_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ActivityEditScreen extends StatefulWidget {
  const ActivityEditScreen({
    super.key,
    required this.activityEntity,
  });

  final ActivityEntity activityEntity;

  @override
  State<ActivityEditScreen> createState() => _ActivityEditScreenState();
}

class _ActivityEditScreenState extends State<ActivityEditScreen> {
  final _title = TextEditingController();
  final _description = TextEditingController();
  final _latitude = TextEditingController();
  final _longitude = TextEditingController();
  late final List<TagEntity> _tags;
  late final List<String> _images;
  final _imageController = TextEditingController();

  late DateTime startDate, endDate;
  late TimeOfDay startTime, endTime;

  @override
  void initState() {
    super.initState();
    _title.text = widget.activityEntity.title;
    _description.text = widget.activityEntity.description;
    _latitude.text = '${widget.activityEntity.latitude}';
    _longitude.text = '${widget.activityEntity.longitude}';
    startDate = widget.activityEntity.startTime;
    endDate = widget.activityEntity.finishTime;
    startTime = TimeOfDay.fromDateTime(startDate);
    endTime = TimeOfDay.fromDateTime(endDate);
    // _tags = List<TagEntity>.from(widget.activityEntity.tags);
    _images = List<String>.from(widget.activityEntity.pictures);
  }

  @override
  Widget build(BuildContext context) {
    final user = getIt<UserChangeNotifier>().user!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: AppTextStyle.h1,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Text('from', style: AppTextStyle.subtext),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    startDate = (await showDatePicker(
                        context: context,
                        initialDate: startDate ?? DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now()
                            .copyWith(year: DateTime.now().year + 1)))!;
                    setState(() {});
                  },
                  child: Text(
                    startDate
                            ?.toString()
                            .split(' ')
                            .elementAt(0)
                            .replaceAll('-', '/') ??
                        '----/--/--',
                    style: AppTextStyle.body,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    startTime = (await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay(
                          hour: DateTime.now().hour,
                          minute: DateTime.now().minute),
                    ))!;
                    setState(() {});
                  },
                  child: Text(
                    startTime?.format(context) ?? '--:--',
                    style: AppTextStyle.body,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text('to', style: AppTextStyle.subtext),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    endDate = (await showDatePicker(
                        context: context,
                        initialDate: endDate ?? startDate ?? DateTime.now(),
                        firstDate: startDate ?? DateTime.now(),
                        lastDate: DateTime.now()
                            .copyWith(year: DateTime.now().year + 1)))!;
                    setState(() {});
                  },
                  child: Text(
                    endDate
                            ?.toString()
                            .split(' ')
                            .elementAt(0)
                            .replaceAll('-', '/') ??
                        '----/--/--',
                    style: AppTextStyle.body,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    endTime = (await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay(
                          hour: DateTime.now().hour,
                          minute: DateTime.now().minute),
                    ))!;
                    setState(() {});
                  },
                  child: Text(
                    endTime?.format(context) ?? '--:--',
                    style: AppTextStyle.body,
                  ),
                ),
              ),
            ],
          ),
          Form(
              child: Column(
            children: [
              TextFormField(
                controller: _title,
                decoration: const InputDecoration(
                  labelText: 'title',
                ),
              ),
              TextFormField(
                controller: _description,
                decoration: const InputDecoration(
                  labelText: 'description',
                ),
              ),
              TextFormField(
                controller: _latitude,
                decoration: const InputDecoration(
                  labelText: 'latitude',
                ),
              ),
              TextFormField(
                controller: _longitude,
                decoration: const InputDecoration(
                  labelText: 'longitude',
                ),
              ),
            ],
          )),
          Text(
            'Images',
            style: AppTextStyle.body,
          ),
          SizedBox(
            height: 40,
            child: Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _images.length + 1,
                  itemBuilder: (context, index) {
                    if (index == _images.length) {
                      return IconButton(
                          onPressed: () async {
                            _imageController.text = '';
                            String? result = await showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Add image'),
                                  content: SizedBox(
                                    height: 100,
                                    child: AppTextInput(
                                      title: '',
                                      controller: _imageController,
                                    ),
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .pop(
                                                null); // dismisses only the dialog and returns false
                                      },
                                      child: const Text('No'),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .pop(_imageController
                                                .text); // dismisses only the dialog and returns true
                                      },
                                      child: const Text('Yes'),
                                    ),
                                  ],
                                );
                              },
                            );
                            if (result == null) {
                              return;
                            }
                            _images.add(result);
                            setState(() {});
                          },
                          icon: const Icon(Icons.add));
                    }
                    return SizedBox(
                        height: 20,
                        child: TagChip(
                          name: _images.elementAt(index),
                          func: () {
                            _images.removeAt(index);
                            setState(() {});
                          },
                        ));
                  }),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              return context
                  .read<ActivityCubit>()
                  .deleteActivity(widget.activityEntity.id);
            },
            child: Text(
              'Delete Activity'.toUpperCase(),
              style: AppTextStyle.button,
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final edited = UpdateActivityDto(
                _title.text,
                _description.text,
                double.parse(_latitude.text),
                double.parse(_longitude.text),
                startDate.add(
                    Duration(hours: startTime.hour, minutes: startTime.minute)),
                endDate.add(
                    Duration(hours: startTime.hour, minutes: startTime.minute)),
                _images,
              );
              return context
                  .read<ActivityCubit>()
                  .editActivity(widget.activityEntity.id, edited);
            },
            child: Text(
              'Apply'.toUpperCase(),
              style: AppTextStyle.button,
            ),
          ),
        ],
      ),
    );
  }
}
