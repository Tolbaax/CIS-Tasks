import 'package:carousel_slider/carousel_slider.dart';
import 'package:cis_tasks/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/utils/app_strings.dart';
import '../../core/utils/constants.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({Key? key}) : super(key: key);

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.ourEvents,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        CarouselSlider(
          items: List.generate(
            Constants.images.length,
            (index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.darkGray,
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: NetworkImage(Constants.images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              }),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Align(
          alignment: Alignment.center,
          child: AnimatedSmoothIndicator(
            activeIndex: currentIndex,
            count: Constants.images.length,
            effect: const JumpingDotEffect(
              activeDotColor: Colors.teal,
              dotHeight: 11.0,
              dotWidth: 11.0,
            ),
          ),
        ),
      ],
    );
  }
}
