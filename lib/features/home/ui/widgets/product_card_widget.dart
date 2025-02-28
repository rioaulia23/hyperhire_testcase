import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/constants/color_constants.dart';
import 'package:testcase/features/home/ui/widgets/description_widget.dart';
import 'package:testcase/features/home/ui/widgets/ranked_image_widget.dart';
import 'package:testcase/features/home/ui/widgets/tag_widget.dart';

import 'package:testcase/models/product/product_model.dart';

class ProductCardWidget extends StatelessWidget {
  final Product product;

  const ProductCardWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RankedImageWidget(
            imagePath: product.image,
            rank: product.rank,
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                DescriptionList(
                  product: product,
                ),
                SizedBox(height: 6.h),
                Row(
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      color: ColorConstants.yellow,
                      size: 16.sp,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      product.rating.toString(),
                      style: TextStyle(
                        color: ColorConstants.yellow,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 2.w),
                    Text(
                      '(${product.reviewCount})',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                CategoryList(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
