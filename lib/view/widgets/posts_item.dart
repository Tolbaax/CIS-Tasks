import 'package:cis_tasks/core/utils/media_query_values.dart';
import 'package:cis_tasks/view/screens/post_details.dart';
import 'package:cis_tasks/view/widgets/custom_point.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/utils/app_colors.dart';
import '../../model/post_model.dart';

class PostItem extends StatelessWidget {
  final PostModel postModel;

  const PostItem({Key? key, required this.postModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PostDetails(postModel: postModel),
              ),
            ),
            child: Hero(
              tag: postModel.image!,
              child: Container(
                height: context.height * 0.15,
                decoration: BoxDecoration(
                    color: AppColors.darkGray,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(postModel.image!),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 8, start: 8, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  postModel.title!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.solidThumbsUp,
                      size: 15,
                      color: postModel.isLiked == true
                          ? Colors.blue
                          : AppColors.hint,
                    ),
                    const CustomPoint(),
                    Icon(
                      FontAwesomeIcons.comment,
                      size: 15,
                      color: AppColors.hint,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      postModel.commentsNumber.toString(),
                      style: TextStyle(color: AppColors.hint, fontSize: 16),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PostDetails(postModel: postModel),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_forward_outlined,
                        color: AppColors.primary,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
