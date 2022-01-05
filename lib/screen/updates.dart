import 'package:detailor/screen/set_reminder.dart';
import 'package:detailor/views/search_filter.dart';
import 'package:flutter/material.dart';

class UpdatesScreen extends StatefulWidget {
  UpdatesScreen({Key key}) : super(key: key);

  @override
  _UpdatesScreenState createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  List<Map<String, dynamic>> updates = [
    {'name': 'Janet Okoro', 'due': '24 December, 2020', 'reminder': true},
    {'name': 'Vwegba EMinokanju', 'due': '24 June, 2021', 'reminder': false},
    {'name': 'Gladys Eve', 'due': '1 April, 2020', 'reminder': false},
    {'name': 'Aaron Micheal', 'due': '2 January, 2020', 'reminder': true},
    {'name': 'Pascal', 'due': '29 December, 2020', 'reminder': true},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          children: [
            SearchFilterField(),
            Expanded(
              child: updates.length < 1
                  ? EmptyUpdateScreen()
                  : ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: [
                              for (var i = 0; i < updates.length; i++)
                                UpdatesTile(updates: updates, i: i),
                            ],
                          ),
                        ),
                        DetailorPremiumBanner(),
                        NewFeatureBanner()
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewFeatureBanner extends StatelessWidget {
  const NewFeatureBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Row(
            children: [
              CircleAvatar(maxRadius: 25),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'New Feature for you',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      'Save designs directly to the App, anywhere you find them on the web',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 12),
                    )
                  ],
                ),
              ),
              SizedBox(width: 15),
              Container(
                width: 70,
                height: 35,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(.3),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: FittedBox(
                  child: Text(
                    'Try now',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class DetailorPremiumBanner extends StatelessWidget {
  const DetailorPremiumBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Container(
          color: Theme.of(context).primaryColor.withOpacity(.6),
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Row(
            children: [
              CircleAvatar(maxRadius: 25),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Get Detailor Premium',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      'Manage your workers and collaborate with other designers all in one App',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 12),
                    )
                  ],
                ),
              ),
              SizedBox(width: 15),
              Container(
                width: 70,
                height: 35,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: FittedBox(
                  child: Text(
                    'Upgrade',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class UpdatesTile extends StatelessWidget {
  const UpdatesTile({
    Key key,
    @required this.updates,
    @required this.i,
  }) : super(key: key);

  final List<Map<String, dynamic>> updates;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        child: Row(
          children: [
            CircleAvatar(maxRadius: 25),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          updates[i]['name'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 14),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 21,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: FittedBox(
                          child: Text('2 weeks'),
                        ),
                      ),
                      SizedBox(width: 3),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(249, 249, 249, 1),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'due by',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                                fontSize: 8,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        updates[i]['due'],
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
            ),
            !updates[i]['reminder']
                ? Container(
                    width: 100,
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(.05),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: FittedBox(child: Text('Job is due today')),
                  )
                : GestureDetector(
                    onTap: () => Navigator.of(context)
                        .pushNamed(SetReminderScreen.route),
                    child: Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Theme.of(context).accentColor.withOpacity(.05),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Expanded(
                            child: FittedBox(
                              child: Text(
                                'Set Reminder',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                          ),
                          FittedBox(
                            child: Icon(
                              Icons.alarm_add_outlined,
                              color: Theme.of(context).accentColor,
                              size: 20,
                            ),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

class EmptyUpdateScreen extends StatelessWidget {
  const EmptyUpdateScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'You’all good, No updates for now',
          textAlign: TextAlign.center,
        ),
        Container(
          width: 250,
          height: 50,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color.fromRGBO(249, 249, 249, 1),
          ),
          child: Text(
            'Check out some Fashion Tips',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
