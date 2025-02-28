import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testcase/constants/icon_constants.dart';
import 'package:testcase/constants/image_constants.dart';
import 'package:testcase/features/profile/ui/profile_screen.dart';
import 'package:testcase/shared_widgets/svg_icon.dart';

class HorizontalCircleImages extends StatelessWidget {
  final List<Map<String, String>> users = [
    {'name': 'Kitty', 'rank': '1', 'image': ImageConstants.cat1},
    {'name': 'Bobby', 'rank': '2', 'image': ImageConstants.cat2},
    {'name': 'Rocky', 'rank': '3', 'image': ImageConstants.cat3},
    {'name': 'Mina', 'rank': '4', 'image': ImageConstants.cat4},
    {'name': 'Momo', 'rank': '5', 'image': ImageConstants.cat5},
    {'name': 'Kuma', 'rank': '6', 'image': ImageConstants.cat6},
    {'name': 'Sora', 'rank': '7', 'image': ImageConstants.cat7},
    {'name': 'Owi', 'rank': '8', 'image': ImageConstants.cat8},
    {'name': 'Lopy', 'rank': '9', 'image': ImageConstants.cat9},
    {'name': 'Orange', 'rank': '10', 'image': ImageConstants.cat10},
  ];

  HorizontalCircleImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(
                      name: user['name']!,
                      rank: user['rank']!,
                      image: user['image']!,
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 62.w,
                        height: 62.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: index == 0
                              ? Border.all(
                                  color: Colors.amber,
                                  width: 3.w,
                                )
                              : null,
                        ),
                        child: CircleAvatar(
                          radius: 40.w,
                          backgroundImage: AssetImage(user['image'].toString()),
                        ),
                      ),
                      if (index == 0)
                        Positioned(
                          left: 0,
                          top: -12.h,
                          child: SvgIcon(
                            icon: IconConstants.iconCrown,
                            size: 16.w,
                            color: Colors.amber,
                          ),
                        ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    user['name']!.toString(),
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
