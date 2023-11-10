import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/core/utils/app_consts.dart';

List<String> categories = [
  'IGTV',
  'Shop',
  'Style',
  'Sports',
  'Auto',
  'Car',
  'Love',
  'Road',
  'Sky',
  'Red',
];

class SearchCategoriesWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const SearchCategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      margin: const EdgeInsets.only(bottom: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            height: 32,
            margin: const EdgeInsets.symmetric(horizontal: 3.0),
            decoration: ShapeDecoration(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Colors.white.withOpacity(0.15000000596046448),
                ),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                if (index == 0)
                  SvgPicture.asset('assets/images/ic_ig_tv_filled.svg'),
                if (index == 1) SvgPicture.asset('assets/images/ic_shop.svg'),
                if (index == 0 || index == 1) sizeHor(5),
                Text(
                  categories[index],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFFF9F9F9),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.20,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
