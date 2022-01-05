import 'package:detailor/screen/job_view_edit.dart';
import 'package:flutter/material.dart';

class JobViewsScreen extends StatelessWidget {
  static const route = '/jobscreenview';
  const JobViewsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Jobs',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
        actions: [
          FlatButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(JobViewEditScreen.route),
            child: Text(
              'Edit',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(.05),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: FittedBox(
                        child: Text(
                          'Agbada',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(.05),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add_alert),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 21,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(.05),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      child: FittedBox(child: Text('due by')),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '24 June. 2020',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontWeight: FontWeight.w600, fontSize: 14),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 120,
              child: Stack(
                children: [
                  Container(
                    height: 100,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(.05),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      'I need to talk to jeff about this design oo, e go stress me and e don design something like this before',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 14),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.play_arrow),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.mic,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        SizedBox(width: 50),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Text(
              'Measurement taken:',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 1),
                children: [for (var i = 0; i < 10; i++) MeasurementTile()],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Design and Material images',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              'assets/images/background.png',
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          'Design/style',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              'assets/images/background.png',
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          'Material',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Text('Customer:',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 14)),
            SizedBox(height: 10),
            SizedBox(
              child: Row(
                children: [
                  CircleAvatar(maxRadius: 29),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Janeth Okoro',
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ],
                        ),
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 21,
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(.05),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2),
                              child: FittedBox(child: Text('due by')),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '24 June. 2020',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(.05),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.message_outlined),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(.05),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.call_outlined),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class MeasurementTile extends StatelessWidget {
  const MeasurementTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 96,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(.05),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Neck',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 12),
              ),
            ),
          ),
          Align(
            child: Text(
              '12',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(fontSize: 30, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
