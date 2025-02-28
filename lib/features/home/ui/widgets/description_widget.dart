import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/models/product/product_model.dart';

class DescriptionList extends StatelessWidget {
  final Product product;

  const DescriptionList({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final List<String> descriptionLines = product.description.split('\n');

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: descriptionLines.length,
      itemBuilder: (context, index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: Icon(
                Icons.circle,
                size: 6.sp,
                color: Colors.grey[700],
              ),
            ),
            Expanded(
              child: Text(
                descriptionLines[index],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
