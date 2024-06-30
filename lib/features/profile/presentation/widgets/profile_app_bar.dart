import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/core/utils/app_consts.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: backGroundColor,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/ic_lock.svg'),
          sizeHor(6),
          const Text(
            'alamin_karno',
            style: TextStyle(
              color: Color(0xFFF9F9F9),
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.33,
            ),
          ),
          sizeHor(6),
          SvgPicture.asset('assets/images/ic_arrow_down.svg'),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/ic_menu.svg'),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
