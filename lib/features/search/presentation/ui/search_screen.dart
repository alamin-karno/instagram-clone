import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/core/utils/app_consts.dart';
import 'package:instagram/features/search/search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: appBarBgColor,
              floating: true,
              snap: true,
              title: const SearchBarWidget(),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/images/ic_camera_live.svg'),
                ),
                sizeHor(10),
              ],
              bottom: const SearchCategoriesWidget(),
            ),
            SliverStaggeredGrid.countBuilder(
              crossAxisCount: 3,
              itemCount: 60,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Container(
                      color: Colors.white10,
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://images.unsplash.com/photo-1608725131946-c73a151f2f8a?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                        errorWidget: (context, url, error) => const Center(
                          child: Icon(
                            Icons.image,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    if (index % 3 == 0)
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              SvgPicture.asset('assets/images/ic_gallery.svg'),
                        ),
                      ),
                  ],
                );
              },
              staggeredTileBuilder: (int index) {
                return StaggeredTile.count(1, index.isEven ? 1.5 : 1);
              },
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
            ),
          ],
        ),
      ),
    );
  }
}
