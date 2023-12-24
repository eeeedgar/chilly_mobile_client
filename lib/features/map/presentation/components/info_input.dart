import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class AppTextInput extends StatelessWidget {
  const AppTextInput(
      {super.key, required this.controller, required this.title});

  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.body,
        ),
        TextFormField(
          controller: controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
      ],
    );
  }
}
