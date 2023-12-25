import 'package:auto_route/auto_route.dart';
import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:chilly_mobile_client/app/router/app_router.gr.dart';
import 'package:chilly_mobile_client/features/activities/domain/activity_cubit.dart';
import 'package:chilly_mobile_client/features/activities/domain/create_activity_entity.dart';
import 'package:chilly_mobile_client/features/activities/domain/tag_entity.dart';
import 'package:chilly_mobile_client/features/map/presentation/components/info_input.dart';
import 'package:chilly_mobile_client/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SpecifyActivityDetailsScreen extends StatefulWidget {
  const SpecifyActivityDetailsScreen({
    super.key,
    required this.createActivityEntity,
  });

  final CreateActivityEntity createActivityEntity;

  @override
  State<SpecifyActivityDetailsScreen> createState() =>
      _SpecifyActivityDetailsScreenState();
}

class _SpecifyActivityDetailsScreenState
    extends State<SpecifyActivityDetailsScreen> {
  final _descriptionController = TextEditingController();
  // final _tagController = TextEditingController();
  final _tags = List<TagEntity>.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Event details')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text('${widget.event.toJson()}'),
            AppTextInput(
              controller: _descriptionController,
              title: 'Description',
            ),
            const SizedBox(
              height: 40,
            ),
            // Text(
            //   'Tags',
            //   style: AppTextStyle.body,
            // ),
            // SizedBox(
            //   height: 40,
            //   child: Expanded(
            //     child: ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         itemCount: _tags.length + 1,
            //         itemBuilder: (context, index) {
            //           if (index == _tags.length) {
            //             return IconButton(
            //                 onPressed: () async {
            //                   _tagController.text = '';
            //                   String? result = await showDialog(
            //                     context: context,
            //                     builder: (context) {
            //                       return AlertDialog(
            //                         title: const Text('Add tag'),
            //                         content: SizedBox(
            //                           height: 100,
            //                           child: AppTextInput(
            //                             title: '',
            //                             controller: _tagController,
            //                           ),
            //                         ),
            //                         actions: <Widget>[
            //                           ElevatedButton(
            //                             onPressed: () {
            //                               Navigator.of(context,
            //                                       rootNavigator: true)
            //                                   .pop(
            //                                       null); // dismisses only the dialog and returns false
            //                             },
            //                             child: const Text('No'),
            //                           ),
            //                           ElevatedButton(
            //                             onPressed: () {
            //                               Navigator.of(context,
            //                                       rootNavigator: true)
            //                                   .pop(_tagController
            //                                       .text); // dismisses only the dialog and returns true
            //                             },
            //                             child: const Text('Yes'),
            //                           ),
            //                         ],
            //                       );
            //                     },
            //                   );
            //                   if (result == null) {
            //                     return;
            //                   }
            //                   _tags.add(result);
            //                   setState(() {});
            //                 },
            //                 icon: const Icon(Icons.add));
            //           }
            //           return SizedBox(
            //               height: 20,
            //               child: TagChip(name: _tags.elementAt(index)));
            //         }),
            //   ),
            // ),
            // const SizedBox(
            //   height: 40,
            // ),
            Text(
              'Images',
              style: AppTextStyle.body,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                final event = widget.createActivityEntity.copyWith(
                    description: _descriptionController.text, tags: _tags);
                context.read<ActivityCubit>().createActivity(event);
                appRouter.replaceAll([const MarkerRoute()]);
              },
              child: Text(
                'Create event'.toUpperCase(),
                style: AppTextStyle.button,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
