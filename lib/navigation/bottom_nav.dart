import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testcase/constants/color_constants.dart';
import 'package:testcase/constants/icon_constants.dart';
import 'package:testcase/constants/image_constants.dart';
import 'package:testcase/features/connection/ui/connection_screen.dart';
import 'package:testcase/features/explore/ui/explore_screen.dart';
import 'package:testcase/features/home/ui/home_screen.dart';
import 'package:testcase/features/profile/ui/profile_screen.dart';

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({super.key});

  @override
  State<BottomNavigationExample> createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const ConnectionScreen(),
    const ProfileScreen(
      name: 'Kitty',
      rank: '1',
      image: ImageConstants.cat1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 0, blurRadius: 2),
          ],
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(10.0),
          ),
          child: BottomNavigationBar(
            enableFeedback: false,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            selectedItemColor: ColorConstants.darkerGrey,
            unselectedItemColor: ColorConstants.midGrey,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IconConstants.iconHome,
                  width: 24,
                  height: 24,
                ),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IconConstants.iconExplore,
                  width: 24,
                  height: 24,
                ),
                label: '카테고리',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IconConstants.iconConnection,
                  width: 24,
                  height: 24,
                ),
                label: '커뮤니티',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IconConstants.iconProfile,
                  width: 24,
                  height: 24,
                ),
                label: '마이페이지',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
