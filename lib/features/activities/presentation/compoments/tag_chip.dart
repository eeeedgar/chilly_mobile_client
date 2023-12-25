import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class TagChip extends StatelessWidget {
  const TagChip({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          name.toUpperCase(),
          style: AppTextStyle.tag,
        ));
  }
}
