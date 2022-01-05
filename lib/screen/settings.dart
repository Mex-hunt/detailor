import 'package:detailor/screen/data_backup.dart';
import 'package:detailor/screen/help.dart';
import 'package:detailor/screen/my_profile_edit.dart';
import 'package:detailor/screen/notification.dart';
import 'package:detailor/views/my_drawer.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const route = '/settings';
  const SettingsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.color,
        title: Text(
          'Settings',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
      ),
      drawer: MyMainDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          maxRadius: 25,
                        ),
                      ),
                      Text(
                        'Andrew Kome Oluwatunde',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        'Tunde’s Clothing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context)
                      .pushNamed(MyProfileEditScreen.route),
                  child: Container(
                    width: 70,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).primaryColor.withOpacity(.3),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text('Edit'),
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  ListTile(
                    onTap: () => Navigator.of(context)
                        .pushNamed(NotificationScreen.route),
                    leading: Icon(Icons.notifications_outlined),
                    title: Text(
                      'Notifications',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    subtitle: Text(
                      'Push notifications, Updates, Fashion tips',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontSize: 12),
                    ),
                  ),
                  ListTile(
                    onTap: () =>
                        Navigator.of(context).pushNamed(DataBackupScreen.route),
                    leading: Icon(Icons.cloud_upload_outlined),
                    title: Text(
                      'Data storage and back up',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    subtitle: Text(
                      'Job and Customer data back-up',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontSize: 12),
                    ),
                  ),
                  ListTile(
                    onTap: () =>
                        Navigator.of(context).pushNamed(HelpScreen.route),
                    leading: Icon(Icons.notifications_outlined),
                    title: Text(
                      'Help',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    subtitle: Text(
                      'Contact us, Privacy policy',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
