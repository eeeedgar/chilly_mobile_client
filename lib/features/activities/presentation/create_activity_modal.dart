import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:chilly_mobile_client/app/router/app_router.gr.dart';
import 'package:chilly_mobile_client/features/activities/domain/create_activity_entity.dart';
import 'package:chilly_mobile_client/features/map/presentation/components/info_input.dart';
import 'package:chilly_mobile_client/main.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class CreateActivityModal extends StatefulWidget {
  const CreateActivityModal({super.key, required this.point});

  final LatLng point;

  @override
  State<CreateActivityModal> createState() => _CreateActivityModalState();
}

class _CreateActivityModalState extends State<CreateActivityModal> {
  final _titleController = TextEditingController();
  DateTime? startDate, endDate;
  TimeOfDay? startTime, endTime;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'New activity',
              style: AppTextStyle.h1,
            ),
            const SizedBox(
              height: 40,
            ),
            AppTextInput(
              controller: _titleController,
              title: 'Title',
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    startDate = await showDatePicker(
                        context: context,
                        initialDate: startDate ?? DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now()
                            .copyWith(year: DateTime.now().year + 1));
                    setState(() {});
                  },
                  child: Text(
                    startDate
                            ?.toString()
                            .split(' ')
                            .elementAt(0)
                            .replaceAll('-', '/') ??
                        'date of start',
                    style: AppTextStyle.body,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    endDate = await showDatePicker(
                        context: context,
                        initialDate: endDate ?? startDate ?? DateTime.now(),
                        firstDate: startDate ?? DateTime.now(),
                        lastDate: DateTime.now()
                            .copyWith(year: DateTime.now().year + 1));
                    setState(() {});
                  },
                  child: Text(
                    endDate
                            ?.toString()
                            .split(' ')
                            .elementAt(0)
                            .replaceAll('-', '/') ??
                        'date of end',
                    style: AppTextStyle.body,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    startTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay(
                          hour: DateTime.now().hour,
                          minute: DateTime.now().minute),
                    );
                    setState(() {});
                  },
                  child: Text(
                    startTime?.format(context) ?? 'time of start',
                    style: AppTextStyle.body,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    endTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay(
                          hour: DateTime.now().hour,
                          minute: DateTime.now().minute),
                    );
                    setState(() {});
                  },
                  child: Text(
                    endTime?.format(context) ?? 'time of end',
                    style: AppTextStyle.body,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
                if (startDate == null || endDate == null) {
                  return;
                }
                if (startTime == null || endTime == null) {
                  return;
                }
                final start = startDate!.add(Duration(
                    hours: startTime!.hour, minutes: startTime!.minute));
                final end = endDate!.add(
                    Duration(hours: endTime!.hour, minutes: endTime!.minute));
                final createActivity = CreateActivityEntity(
                  title: _titleController.text,
                  latitude: widget.point.latitude,
                  longitude: widget.point.longitude,
                  startTime: start,
                  finishTime: end,
                );
                appRouter.pop();
                appRouter.push(
                  SpecifyActivityDetailsRoute(
                    createActivityEntity: createActivity,
                  ),
                );
              },
              child: Text(
                'Continue filling details'.toUpperCase(),
                style: AppTextStyle.button,
              ),
            )
          ],
        ),
      ),
    );
  }
}
