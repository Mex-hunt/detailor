import 'dart:math';

import 'package:detailor/views/search_filter.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GalleryScreen extends StatefulWidget {
  GalleryScreen({Key key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  Random rdm = Random();

  List<String> gallery = [
    'https://i.pinimg.com/564x/73/1e/6b/731e6bca5df822eebd36be69bb5a3b3c--african-wear-african-fashion.jpg',
    'https://i.pinimg.com/originals/8b/0f/93/8b0f938e7f54dd157caf6b5353f7559d.png',
    'https://jamilakyari.com/wp-content/uploads/2019/10/African-fashion-styles-for-black-history-month.png',
    'https://africanfashionandlifestyles.com/wp-content/uploads/2019/08/20190815_225401_0000-1024x576.png',
    'https://www.od9jastyles.com/wp-content/uploads/2019/08/ankara-styles-png.png',
    'https://i.pinimg.com/originals/68/e7/8e/68e78e3efe54d849f0e077bdcf1d7bc1.png',
    'https://www.africafashionguide.com/wp-content/uploads/2015/07/Bildschirmfoto-2015-07-16-um-23.57.52.png',
    'https://png.pngtree.com/element_our/png/20181022/aztec-tribal-with-african-egyptian-style-seamless-pattern-vector-funky-png_178745.jpg',
    'https://cdn.apkmonk.com/images/ghana.dresses.styles.png',
    'https://ae01.alicdn.com/kf/HTB1R5KHe3aH3KVjSZFjq6AFWpXaN/2019-Super-size-New-style-African-women-s-Dashiki-fashion-Hot-drill-Chiffon-big-sleeves-slim.jpg',
    'https://kisua.com/resources/mid_centre_19-04-30.png',
    'https://images-na.ssl-images-amazon.com/images/I/41ynMPn-R8L._AC_.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    var col = rdm.nextInt(2) + 1;
    print(col);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SearchFilterField(),
            Expanded(
              child: gallery.length < 1
                  ? EmptyGallery()
                  : SizedBox(
                      width: double.infinity,
                      child: StaggeredGridView(
                        gridDelegate:
                            SliverStaggeredGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 8,
                          staggeredTileBuilder: (_) => StaggeredTile.fit(4),
                          mainAxisSpacing: 4.0,
                          crossAxisSpacing: 4.0,
                        ),
                        children: [
                          for (var i = 0; i < gallery.length; i++)
                            Container(
                              child: Stack(
                                children: [
                                  Image.network(gallery[i]),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: PopupMenuButton(
                                      icon: Icon(
                                        Icons.more_vert_outlined,
                                        color: Theme.of(context).accentColor,
                                      ),
                                      onSelected: (value) {},
                                      itemBuilder: (context) => [
                                        PopupMenuItem(
                                          value: 'SHARE',
                                          child: Text('Share'),
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                        PopupMenuItem(
                                          value: 'DELETE',
                                          child: Text('Delete'),
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmptyGallery extends StatelessWidget {
  const EmptyGallery({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'All your designs, the ones you did, even the ones you would like to create in one place ',
          textAlign: TextAlign.center,
        ),
        SelectUploadImage(),
        Text(
          'Capture or Upload from your Phone Gallery now',
          style: Theme.of(context).textTheme.bodyText1.copyWith(
              color: Theme.of(context).accentColor,
              fontSize: 14,
              fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class SelectUploadImage extends StatelessWidget {
  const SelectUploadImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 300,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Transform.rotate(
              angle: .3,
              child: Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).primaryColor.withOpacity(.1),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Transform.rotate(
              angle: .12,
              child: Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).primaryColor.withOpacity(.5),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.add_a_photo,
                      color: Colors.white.withOpacity(.5),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.file_upload,
                      color: Colors.white.withOpacity(.5),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
