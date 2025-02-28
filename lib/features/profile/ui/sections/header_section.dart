import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/constants/color_constants.dart';
import 'package:testcase/constants/icon_constants.dart';
import 'package:testcase/shared_widgets/svg_icon.dart';

class ProfileCard extends StatelessWidget {
  final String name; // Add name parameter
  final String rank; // Add name parameter
  final String image;

  const ProfileCard(
      {super.key, required this.name, required this.rank, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      padding: EdgeInsets.all(16.w),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60.w, // Set the radius of the circle
            backgroundImage:
                AssetImage(image), // Use AssetImage for local assets
          ),
          // Title
          Text(
            name,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.h),
          // Subtitle
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SvgIcon(
                    icon: IconConstants.iconCrown,
                    color: rank == '1'
                        ? Colors.amber
                        : rank == '2'
                            ? ColorConstants.darkerGrey
                            : ColorConstants.bronzeCrown,
                    size: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2, right: 1),
                    child: Text(
                      rank.toString(),
                      style: const TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 2.5.w,
              ),
              Text(
                '골드',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          // Description
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 12.w, vertical: 8.h), // Add padding
            decoration: BoxDecoration(
              color: Colors.grey[200], // Background color
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            child: Text(
              '조립컴 업체를 운영하며 리뷰를 작성합니다.',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
          )
        ],
      ),
    );
  }
}
