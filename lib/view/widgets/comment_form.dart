import 'package:flutter/material.dart';

import '../../core/utils/app_strings.dart';
import '../../core/utils/constants.dart';
import 'custom_button.dart';
import 'custom_text_filed.dart';

class CommentForm extends StatefulWidget {
  const CommentForm({Key? key}) : super(key: key);

  @override
  State<CommentForm> createState() => _CommentFormState();
}

class _CommentFormState extends State<CommentForm> {
  final nameController = TextEditingController();
  final commentController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFiled(
            controller: nameController,
            hint: AppStrings.yourName,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppStrings.nameValidate;
              }
              return null;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFiled(
            controller: commentController,
            hint: AppStrings.writeComment,
            keyboardType: TextInputType.multiline,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppStrings.commentValidate;
              }
              return null;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(onTab: () {
            sendComment();
          }),
        ],
      ),
    );
  }

  void sendComment() {
    FocusScope.of(context).unfocus();

    if (formKey.currentState!.validate()) {
      _clearControllers();
      _showSuccessToast();
      _closeScreen();
    }
  }

  void _clearControllers() {
    setState(() {
      nameController.clear();
      commentController.clear();
    });
  }

  void _showSuccessToast() {
    Constants.showToast(msg: AppStrings.sendSuccessfully);
  }

  void _closeScreen() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pop(context);
    });
  }
}
