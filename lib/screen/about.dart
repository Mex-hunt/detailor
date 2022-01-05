import 'package:detailor/views/my_drawer.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const route = '/aboutscreen';
  const AboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.color,
        title: Text(
          'About',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
      ),
      drawer: MyMainDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'About',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 5),
            Text(
              'Detailor App',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(height: 10),
            Text(
              'The Detailor App helps fashion designers take measurements and document/manage their clients details wherever they are, easily and securely; thereby helping them to be more productive.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 10),
            Text(
              'With the App you will:',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(height: 20),
            AboutBulletPoint(point: 'Be more professional'),
            SizedBox(height: 2),
            AboutBulletPoint(point: 'Attend to more clients in less time'),
            SizedBox(height: 2),
            AboutBulletPoint(
                point:
                    'Have a digital record of your clients details and easily access them anywhere'),
            SizedBox(height: 2),
            AboutBulletPoint(point: 'Be more creative'),
            SizedBox(height: 2),
            AboutBulletPoint(
                point: 'Easily manage and organise your jobs/clients'),
            SizedBox(height: 25),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor.withOpacity(.2),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  SizedBox(width: 30),
                  Icon(
                    Icons.ios_share,
                    color: Theme.of(context).accentColor,
                  ),
                  Expanded(
                    child: Text(
                      'Share App',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(width: 30),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AboutBulletPoint extends StatelessWidget {
  const AboutBulletPoint({
    Key key,
    this.point,
  }) : super(key: key);

  final String point;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor, shape: BoxShape.circle),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Text(
            '$point',
            maxLines: 2,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        )
      ],
    );
  }
}
