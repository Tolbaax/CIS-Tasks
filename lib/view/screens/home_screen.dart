import 'package:cis_tasks/core/utils/media_query_values.dart';
import 'package:cis_tasks/model/post_model.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_strings.dart';
import '../widgets/custom_carousel_slider.dart';
import '../widgets/posts_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text(
          AppStrings.cisTeam,
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
        child: Column(
          children: [
            const CustomCarouselSlider(),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  AppStrings.newPosts,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  AppStrings.seeAll,
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: context.height * 0.00115,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                children: List.generate(
                  posts.length,
                  (index) => PostItem(postModel: posts[index]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
