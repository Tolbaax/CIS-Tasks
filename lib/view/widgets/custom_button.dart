import 'package:cis_tasks/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';

class CustomButton extends StatelessWidget {
  final GestureTapCallback? onTab;

  const CustomButton({Key? key, this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: context.height * 0.068,
          width: context.width * 0.7,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: [AppColors.primary.withOpacity(0.5), AppColors.primary],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          child: const Center(
            child: Text(
              AppStrings.send,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
