import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/core/utils/app_consts.dart';
import 'package:instagram/features/activity/activity.dart';
import 'package:instagram/features/home/home.dart';
import 'package:instagram/features/post/post.dart';
import 'package:instagram/features/profile/profile.dart';
import 'package:instagram/features/search/search.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onNavigationChanged(int index) {
    pageController.jumpToPage(index);
  }

  void onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: const [
          HomeScreen(),
          SearchScreen(),
          AddPostScreen(),
          ActivityScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: backGroundColor,
        onTap: onNavigationChanged,
        items: [
          BottomNavigationBarItem(
            tooltip: 'Home',
            icon: SvgPicture.asset(
              _currentIndex == 0
                  ? 'assets/images/home_selected.svg'
                  : 'assets/images/home.svg',
              colorFilter: const ColorFilter.mode(
                primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            tooltip: 'Search',
            icon: SvgPicture.asset(
              _currentIndex == 1
                  ? 'assets/images/search_selected.svg'
                  : 'assets/images/search.svg',
              colorFilter: const ColorFilter.mode(
                primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            tooltip: 'Post',
            icon: SvgPicture.asset(
              _currentIndex == 2
                  ? 'assets/images/add.svg'
                  : 'assets/images/add.svg',
              colorFilter: const ColorFilter.mode(
                primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            tooltip: 'Activity',
            icon: SvgPicture.asset(
              _currentIndex == 3
                  ? 'assets/images/favorite_selected.svg'
                  : 'assets/images/favorite.svg',
              colorFilter: const ColorFilter.mode(
                primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          BottomNavigationBarItem(
            tooltip: 'Profile',
            icon: SvgPicture.asset(
              _currentIndex == 4
                  ? 'assets/images/profile_selected.svg'
                  : 'assets/images/profile.svg',
              colorFilter: const ColorFilter.mode(
                primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
