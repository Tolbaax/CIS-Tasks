import 'package:cis_tasks/core/utils/app_colors.dart';
import 'package:cis_tasks/view/widgets/comment_form.dart';
import 'package:cis_tasks/view/widgets/custom_point.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/utils/app_strings.dart';
import '../../model/post_model.dart';

class PostDetails extends StatelessWidget {
  final PostModel postModel;

  const PostDetails({Key? key, required this.postModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: postModel.image!,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.darkGray,
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: NetworkImage(postModel.image!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                postModel.title!,
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    AppStrings.cisTeam,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const CustomPoint(),
                  Text(
                    postModel.date!,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const CustomPoint(),
                  const Icon(
                    FontAwesomeIcons.comment,
                    color: Colors.teal,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    postModel.commentsNumber.toString(),
                    style: const TextStyle(color: Colors.teal),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                postModel.desc!,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 30,
              ),
              const CommentForm(),
            ],
          ),
        ),
      ),
    );
  }
}
