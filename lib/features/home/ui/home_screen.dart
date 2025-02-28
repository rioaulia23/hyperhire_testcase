import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/constants/color_constants.dart';
import 'package:testcase/constants/image_constants.dart';
import 'package:testcase/features/home/ui/sections/footer_section.dart';
import 'package:testcase/features/home/ui/sections/leaderboard_section.dart';
import 'package:testcase/features/home/ui/sections/ranking_section.dart';
import 'package:testcase/features/home/ui/widgets/search_widget.dart';
import 'package:testcase/features/home/ui/widgets/slider_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final List<String> images = [
  ImageConstants.slider1,
  ImageConstants.slider2,
  ImageConstants.slider3,
  ImageConstants.slider4,
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.bgGrey,
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 2,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'LOGO',
            style: TextStyle(
              color: Color(0xFF5D5FEF),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ColoredBox(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 24.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: const SearchBarWidget(),
                  ),
                  SizedBox(height: 24.h),
                  ImageSliderWithDots(images: images),
                  RankingSection(),
                ],
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            const LeaderboardSection(),
            const FooterSection()
          ],
        ),
      ),
    );
  }
}
