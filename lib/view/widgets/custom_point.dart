import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class CustomPoint extends StatelessWidget {
  const CustomPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 10.0, start: 4, end: 4),
      child: CircleAvatar(
        radius: 2,
        backgroundColor: AppColors.primary,
      ),
    );
  }
}
