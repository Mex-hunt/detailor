import 'package:detailor/screen/about.dart';
import 'package:detailor/screen/faqs.dart';
import 'package:detailor/screen/fashion_tips.dart';
import 'package:detailor/screen/home.dart';
import 'package:detailor/screen/my_profile.dart';
import 'package:detailor/screen/settings.dart';
import 'package:flutter/material.dart';

class MyMainDrawer extends StatelessWidget {
  const MyMainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Image.asset('assets/images/background.png', fit: BoxFit.cover),
          Container(color: Theme.of(context).primaryColor.withOpacity(.9)),
          Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(maxRadius: 25),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Andrew Kome Oluwatunde',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Tunde’s Clothing',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    ListTile(
                      onTap: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              HomeScreen.route, (route) => false),
                      leading: Icon(Icons.work, color: Colors.white),
                      tileColor: Theme.of(context).primaryColor,
                      title: Text(
                        'Jobs',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      onTap: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              FAQsScreen.route, (route) => false),
                      leading: Icon(Icons.help_outline, color: Colors.white),
                      title: Text(
                        'FAQs',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      onTap: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              FashionTipScreen.route, (route) => false),
                      leading: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Fashion Tips',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      onTap: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              SettingsScreen.route, (route) => false),
                      leading: Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Settings',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      onTap: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              MyProfileScreen.route, (route) => false),
                      leading: Icon(Icons.person_outline, color: Colors.white),
                      title: Text(
                        'My Profile',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      onTap: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              AboutScreen.route, (route) => false),
                      leading: Icon(Icons.info_outline, color: Colors.white),
                      title: Text(
                        'About Detailor',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              DrawerFooter()
            ],
          ),
        ],
      ),
    );
  }
}

class DrawerFooter extends StatelessWidget {
  const DrawerFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.ios_share,
                  color: Colors.white.withOpacity(.7),
                ),
                SizedBox(width: 10),
                Text(
                  'Share App',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white.withOpacity(.7)),
                )
              ],
            ),
          ),
          Container(
            width: 1,
            height: 30,
            color: Colors.white,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white.withOpacity(.7),
                ),
                SizedBox(width: 10),
                Text(
                  'Rate App',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white.withOpacity(.7)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
