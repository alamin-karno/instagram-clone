import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/core/utils/app_consts.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  ValueNotifier<int> currentIndex = ValueNotifier(0);

  @override
  void dispose() {
    currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CachedNetworkImage(
                  height: 40,
                  width: 40,
                  imageUrl:
                      'https://avatars.githubusercontent.com/alamin-karno',
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: imageProvider),
                    ),
                  ),
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                  errorWidget: (context, url, error) => const Icon(
                    Icons.person,
                    size: 40,
                  ),
                ),
                sizeHor(10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'alamin_karno',
                            style: TextStyle(
                              color: Color(0xFFF9F9F9),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.10,
                            ),
                          ),
                          sizeHor(4),
                          SvgPicture.asset('assets/images/ic_blue_tik.svg'),
                        ],
                      ),
                      sizeVer(4),
                      const Text(
                        'Dhaka, Bangladesh',
                        style: TextStyle(
                          color: Color(0xFFF9F9F9),
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.07,
                        ),
                      ),
                    ],
                  ),
                ),
                sizeHor(10),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz_rounded),
                ),
              ],
            ),
          ),
          sizeVer(10),
          Container(
            constraints: const BoxConstraints(
              minHeight: 300,
              maxHeight: 350,
              minWidth: double.infinity,
              maxWidth: double.infinity,
            ),
            child: Stack(
              children: [
                PageView.builder(
                  itemCount: 3,
                  onPageChanged: (value) {
                    currentIndex.value = value;
                  },
                  itemBuilder: (context, index) {
                    return CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl:
                          'https://images.unsplash.com/photo-1471039497385-b6d6ba609f9c?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                      errorWidget: (context, url, error) => const Icon(
                        Icons.person,
                        size: 40,
                      ),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    decoration: ShapeDecoration(
                      color: const Color(0xE5121212),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 6,
                      ),
                      child: ValueListenableBuilder(
                        valueListenable: currentIndex,
                        builder: (context, state, child) {
                          return Text(
                            '${state + 1}/3',
                            style: const TextStyle(
                              color: Color(0xFFF9F9F9),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          sizeVer(5),
          Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/favorite.svg',
                          fit: BoxFit.none,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/ic_comment.svg',
                          fit: BoxFit.none,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/ic_messenger.svg',
                          fit: BoxFit.none,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/images/ic_save.svg',
                      fit: BoxFit.none,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => ValueListenableBuilder(
                        valueListenable: currentIndex,
                        builder: (context, state, child) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height: 5,
                            width: 5,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 2,
                            ),
                            decoration: BoxDecoration(
                              color: state == index ? Colors.blue : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ],
          ),
          sizeVer(5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CachedNetworkImage(
                  height: 25,
                  width: 25,
                  imageUrl:
                      'https://mir-s3-cdn-cf.behance.net/user/276/c92cfd76489383.6230059e3fe64.jpg',
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: imageProvider),
                    ),
                  ),
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                  errorWidget: (context, url, error) => const Icon(
                    Icons.person,
                    size: 20,
                  ),
                ),
                sizeHor(8),
                const Expanded(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Liked by ',
                          style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.07,
                          ),
                        ),
                        TextSpan(
                          text: 'hossain_mahmud',
                          style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.07,
                          ),
                        ),
                        TextSpan(
                          text: ' and ',
                          style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.07,
                          ),
                        ),
                        TextSpan(
                          text: '44,686 others',
                          style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.07,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          sizeVer(8),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'alamin_karno',
                    style: TextStyle(
                      color: Color(0xFFF9F9F9),
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.10,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      color: Color(0xFFF9F9F9),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.10,
                    ),
                  ),
                  TextSpan(
                    text:
                        'The game in Japan was amazing and I want to share some photos',
                    style: TextStyle(
                      color: Color(0xFFF9F9F9),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.07,
                    ),
                  ),
                ],
              ),
            ),
          ),
          sizeVer(5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'View all 8 comments',
              style: TextStyle(
                color: primaryColor.withOpacity(0.5),
                fontSize: 13,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.10,
              ),
            ),
          ),
          sizeVer(5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              '3 days ago',
              style: TextStyle(
                color: primaryColor.withOpacity(0.4),
                fontSize: 11,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
