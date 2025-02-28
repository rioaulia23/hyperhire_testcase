import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/constants/color_constants.dart';
import 'package:testcase/features/home/ui/widgets/dropdown_widget.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      color: ColorConstants.bgGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'LOG0 Inc.',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildLink('회사소개'),
              ColoredBox(
                color: ColorConstants.greyCrown,
                child: SizedBox(
                  width: 1.w,
                  height: 10.h,
                ),
              ),
              _buildLink('인재채용'),
              ColoredBox(
                color: ColorConstants.greyCrown,
                child: SizedBox(
                  width: 1.w,
                  height: 10.h,
                ),
              ),
              _buildLink('기술블로그'),
              ColoredBox(
                color: ColorConstants.greyCrown,
                child: SizedBox(
                  width: 1.w,
                  height: 10.h,
                ),
              ),
              _buildLink('리뷰저작권'),
            ],
          ),
          SizedBox(height: 18.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.send_rounded,
                    color: ColorConstants.demiGrey,
                  ),
                  Text(
                    'review@logo.com',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: ColorConstants.demiGrey,
                        fontSize: 13.sp),
                  )
                ],
              ),
              const RoundedDropdown(),
            ],
          ),
          SizedBox(height: 14.h),
          const Divider(
            color: ColorConstants.greyCrown,
          ),
          SizedBox(height: 14.h),
          Text(
            '©2022-2022 LOGO Lab, Inc. (주)아무게 서울시 강남구',
            style: TextStyle(
              fontSize: 12.sp,
              color: ColorConstants.greyCrown,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLink(String text) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12.sp,
          color: ColorConstants.greyCrown,
        ),
      ),
    );
  }
}
