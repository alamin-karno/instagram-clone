import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/core/utils/app_consts.dart';
import 'package:instagram/features/home/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarBgColor,
        centerTitle: true,
        title: SvgPicture.asset(
          'assets/images/ic_instagram.svg',
          height: 28,
          colorFilter: const ColorFilter.mode(primaryColor, BlendMode.srcIn),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/ic_camera.svg'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/ic_ig_tv.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/ic_messanger.svg'),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            MyDayListWidget(),
          ],
        ),
      ),
    );
  }
}
