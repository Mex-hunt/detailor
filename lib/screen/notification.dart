import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  static const route = '/settingsnotification';
  const NotificationScreen({Key key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  var _update = true;
  var _tips = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
              'Push Notifications',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(fontSize: 12, color: Colors.black),
            ),
          ),
          Divider(color: Theme.of(context).primaryColor),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListTile(
                    title: Text(
                      'App Updates',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    subtitle: Text(
                      'Automatically Update App (recommended)',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 12),
                    ),
                    trailing: Switch(
                      value: _update,
                      activeColor: Theme.of(context).primaryColor,
                      onChanged: (value) {
                        setState(() {
                          _update = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Fashion Tips',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    subtitle: Text(
                      'Receive fashion design tips',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 12),
                    ),
                    trailing: Switch(
                      value: _tips,
                      activeColor: Theme.of(context).primaryColor,
                      onChanged: (value) {
                        setState(() {
                          _tips = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
