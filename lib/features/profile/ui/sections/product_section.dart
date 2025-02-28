import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/constants/color_constants.dart';
import 'package:testcase/constants/image_constants.dart';
import 'package:testcase/features/profile/ui/widgets/ranked_image_widget.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(1, 0), // Shadow position
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Ranked Image
                  const RankedImageWidget(
                    imagePath: ImageConstants.ryzen,
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  // Product Name and Details
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 17.5.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'AMD 라이젠 5 5600X 버미어 정품 멀티팩',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                            ),
                            softWrap: true, // Allow text to wrap to a new line
                            overflow:
                                TextOverflow.visible, // Prevent text overflow
                          ),
                          SizedBox(height: 8.h),
                          // Rating Bar
                          Row(
                            children: [
                              RatingBar.builder(
                                glow: true,
                                initialRating: 4.07, // Set the initial rating
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 20.w, // Size of the stars
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  // Handle rating updates (if needed)
                                },
                                ignoreGestures:
                                    true, // Disable user interaction
                              ),
                              SizedBox(width: 8.w),
                              Text(
                                '4.07',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: ColorConstants.liteGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
