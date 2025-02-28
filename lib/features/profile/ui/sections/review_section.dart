import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:testcase/constants/color_constants.dart';

import 'package:testcase/features/profile/ui/sections/comment_section.dart';
import 'package:testcase/features/profile/ui/sections/product_section.dart';
import 'package:testcase/features/profile/ui/widgets/dropdown_widget.dart';

class ReviewSection extends StatelessWidget {
  final String name; // Add name parameter
  final String rank; // Add name parameter
  final String image;

  const ReviewSection(
      {super.key, required this.name, required this.rank, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          // First Section: 작성한 리뷰 총 35개
          SizedBox(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 12.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '작성한 리뷰',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          '총 35개',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: ColorConstants.darkerGrey,
                          ),
                        )
                      ],
                    ),
                    const RoundedDropdown(),
                  ],
                ),
              ),
            ),
          ),
          const ProductSection(),
          CommentSection(
            name: name,
            rank: rank,
            image: image,
          ),
        ],
      ),
    );
  }
}
