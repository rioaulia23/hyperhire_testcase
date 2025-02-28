import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/constants/color_constants.dart';
import 'package:testcase/features/profile/ui/sections/header_section.dart';
import 'package:testcase/features/profile/ui/sections/review_section.dart';

class ProfileScreen extends StatefulWidget {
  final String name; // Add name parameter
  final String rank; // Add rank parameter
  final String image; // Add rank parameter

  const ProfileScreen({
    super.key,
    required this.name,
    required this.rank,
    required this.image,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.bgGrey,
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 1,
        title: Column(
          children: [
            Text(
              '랭킹 1위',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: ColorConstants.demiGrey,
                fontSize: 10.sp,
              ),
            ),
            Text(
              '베스트 리뷰어',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileCard(
              name: widget.name,
              rank: widget.rank,
              image: widget.image,
            ),
            SizedBox(
              height: 14.h,
            ),
            ReviewSection(
              name: widget.name,
              rank: widget.rank,
              image: widget.image,
            )
          ],
        ),
      ),
    );
  }
}
