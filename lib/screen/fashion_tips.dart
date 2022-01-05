import 'package:detailor/screen/fashion_tip_view.dart';
import 'package:detailor/views/my_drawer.dart';
import 'package:flutter/material.dart';

class FashionTipScreen extends StatelessWidget {
  static const route = '/fashiontips';
  const FashionTipScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fashion Tips',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
      ),
      drawer: MyMainDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Popular',
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            .copyWith(fontSize: 18),
                      ),
                      Text(
                        'This Month',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    for (var i = 0; i < 8; i++)
                      Row(
                        children: [
                          Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          SizedBox(width: 3),
                        ],
                      )
                  ],
                )
              ],
            ),
            SizedBox(height: 15),
            Text(
              'Expert Tips',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: GestureDetector(
                onTap: () =>
                    Navigator.of(context).pushNamed(FashionTipViewScreen.route),
                child: Stack(
                  children: [
                    Hero(
                      tag: 'tip_1',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          'assets/images/tip_1.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.maxFinite,
                        ),
                      ),
                    ),
                    Container(
                      color: Theme.of(context).primaryColor.withOpacity(.3),
                      width: double.infinity,
                      height: double.maxFinite,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '3 Characteristics of Professional Fashion Designers',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .headline3
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Recommended for you',
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            .copyWith(fontSize: 18),
                      ),
                      Text(
                        'This week',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    for (var i = 0; i < 8; i++)
                      Row(
                        children: [
                          Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          SizedBox(width: 3),
                        ],
                      )
                  ],
                )
              ],
            ),
            SizedBox(height: 15),
            Text(
              'Expert Tips',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(
                      'assets/images/tip_2.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.maxFinite,
                    ),
                  ),
                  Container(
                    color: Theme.of(context).primaryColor.withOpacity(.3),
                    width: double.infinity,
                    height: double.maxFinite,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'How to take a clients measurement in 2 minutes',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
