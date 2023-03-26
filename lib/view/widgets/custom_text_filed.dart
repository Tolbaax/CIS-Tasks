import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class CustomTextFiled extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String hint;
  final FormFieldValidator? validator;

  const CustomTextFiled({
    Key? key,
    this.controller,
    this.keyboardType,
    required this.hint,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLength: keyboardType == TextInputType.multiline ? 255 : null,
      keyboardType: TextInputType.text,
      maxLines: keyboardType == TextInputType.multiline ? null : 1,
      validator: validator,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.grey.shade400,
          fontSize: 18,
        ),
        filled: true,
        fillColor: AppColors.hint.withOpacity(0.5),
        contentPadding: const EdgeInsets.all(8),
        counterStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
