import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/constants/color_constants.dart';
import 'package:testcase/models/product/product_model.dart';

class CategoryList extends StatelessWidget {
  final Product product;

  const CategoryList({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 21.h,
      width: ScreenUtil().screenWidth,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: product.tag.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 8.w),
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
            ),
            decoration: BoxDecoration(
              color: ColorConstants.darkerGrey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                product.tag[index],
                style: TextStyle(
                  fontSize: 12.sp,
                  color: ColorConstants.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
