import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/constants/color_constants.dart';
import 'package:testcase/constants/icon_constants.dart';
import 'package:testcase/shared_widgets/svg_icon.dart';

class RankedImageWidget extends StatelessWidget {
  final String imagePath;
  final int rank;

  const RankedImageWidget(
      {super.key, required this.imagePath, required this.rank});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 120.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                width: 78.w,
                height: 78.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              top: 6,
              left: 6,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgIcon(
                    icon: IconConstants.iconCrown,
                    color: rank == 1
                        ? Colors.amber
                        : rank == 2
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
              )),
        ],
      ),
    );
  }
}
