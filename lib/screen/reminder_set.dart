import 'package:detailor/screen/home.dart';
import 'package:detailor/screen/set_reminder.dart';
import 'package:flutter/material.dart';

class ReminderSet extends StatefulWidget {
  static const route = '/reminderset';
  const ReminderSet({Key key}) : super(key: key);

  @override
  _ReminderSetState createState() => _ReminderSetState();
}

class _ReminderSetState extends State<ReminderSet> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.of(context).pushNamedAndRemoveUntil(
          HomeScreen.route,
          (route) => false,
        );
        
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Set Reminder',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SetReminderTile(),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                color: Theme.of(context).primaryColor,
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      alignment: Alignment.center,
                      child: Text(
                        'Reminder was set successfully',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/thumbs_up.gif',
                            width: double.infinity,
                            height: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            width: double.infinity,
                            height: double.maxFinite,
                            color:
                                Theme.of(context).primaryColor.withOpacity(.7),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'You will receive push notifications according to the the timing you set',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Divider(color: Theme.of(context).primaryColor),
            FlatButton(
              onPressed: () {},
              child: Text('CLOSE'),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
