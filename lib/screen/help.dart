import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  static const route = '/settingshelp';
  const HelpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.people_outline),
              title: Text(
                'Contact Us',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              subtitle: Text(
                'Need help? Questions?',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 12),
              ),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_outlined),
              title: Text(
                'Terms and Privacy policy',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text(
                'App info',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
