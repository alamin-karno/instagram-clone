import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/core/utils/app_consts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(1.5),
                    decoration: const BoxDecoration(
                      color: Color(0xFF48484A),
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://avatars.githubusercontent.com/alamin-karno',
                        imageBuilder: (context, imageProvider) => Container(
                          height: 96,
                          width: 96,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: imageProvider),
                          ),
                        ),
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                        errorWidget: (context, url, error) => const Icon(
                          Icons.account_circle,
                          color: primaryColor,
                          size: 96,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        const Text(
                          '54',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.30,
                          ),
                        ),
                        sizeVer(3),
                        const Text(
                          'Posts',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.10,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        const Text(
                          '834',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.30,
                          ),
                        ),
                        sizeVer(3),
                        const Text(
                          'Followers',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.10,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        const Text(
                          '162',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.30,
                          ),
                        ),
                        sizeVer(3),
                        const Text(
                          'Following',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.10,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            sizeVer(12),
            Row(
              children: [
                const Text(
                  'Md. Al-Amin',
                  style: TextStyle(
                    color: Color(0xFFF9F9F9),
                    fontSize: 12,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                sizeHor(4),
                SvgPicture.asset('assets/images/ic_blue_tik.svg'),
              ],
            ),
            sizeVer(5),
            const Text(
              'Junior Software Engineer @rokomari.com \nAndroid | Flutter | Dart | JAVA | Instructor @Instrcutory',
              style: TextStyle(
                color: Color(0xFFF9F9F9),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            sizeVer(15),
            Container(
              width: double.infinity,
              height: 29,
              decoration: ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.white.withOpacity(0.15),
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Edit Profile',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFF9F9F9),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
