import 'package:detailor/screen/reminder_set.dart';
import 'package:detailor/screen/set_repeat.dart';
import 'package:flutter/material.dart';

class SetReminderScreen extends StatefulWidget {
  static const route = '/setreminder';
  const SetReminderScreen({Key key}) : super(key: key);

  @override
  _SetReminderScreenState createState() => _SetReminderScreenState();
}

class _SetReminderScreenState extends State<SetReminderScreen> {
  var volume = 1.0;
  var vibrate = true;
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
          children: [
            SetReminderTile(),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      child: Text(
                        'What time do you want to be reminded ?',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Divider(color: Colors.white),
                    Expanded(child: MyTimePicker()),
                    GestureDetector(
                      onTap: () =>
                          Navigator.of(context).pushNamed(SetRepeat.route),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        color: Colors.greenAccent.withOpacity(.2),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Repeat',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              'Weekdays',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.greenAccent.withOpacity(.2),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ringtone',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Morning scent',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2),
                    Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.greenAccent.withOpacity(.2),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(volume < .2
                                  ? Icons.volume_mute_outlined
                                  : volume < .6
                                      ? Icons.volume_down_outlined
                                      : Icons.volume_up_outlined),
                              Slider(
                                value: volume,
                                min: 0,
                                max: 1,
                                activeColor: Theme.of(context).primaryColor,
                                onChanged: (value) {
                                  setState(() {
                                    volume = value;
                                  });
                                },
                              ),
                              Icon(Icons.play_arrow),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.vibration_outlined),
                              Switch(
                                value: vibrate,
                                activeColor: Theme.of(context).primaryColor,
                                onChanged: (value) {
                                  setState(() {
                                    vibrate = !vibrate;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Label',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(height: 5),
                          Container(
                            height: 50,
                            width: double.infinity,
                            color: Colors.greenAccent.withOpacity(.1),
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            alignment: Alignment.center,
                            child: Text(
                              'Suit for Janeth Okoro needs to be delivered on 24th June, 2020. He has paid N2500',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            SetReminderFooter(),
          ],
        ),
      ),
    );
  }
}

class MyTimePicker extends StatefulWidget {
  MyTimePicker({Key key}) : super(key: key);

  @override
  _MyTimePickerState createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  final List<String> hour4mat = ['AM', 'PM'];

  var hour = 1;
  var minute = 1;
  var format = 'AM';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
      child: Row(
        children: [
          Expanded(
            child: PageView(
              scrollDirection: Axis.vertical,
              onPageChanged: (value) {
                hour = value + 1;
              },
              children: [
                for (var i = 0; i < 12; i++)
                  Center(
                    child: Text(
                      '${i + 1}',
                      style: TextStyle(color: Colors.white, fontSize: 45),
                    ),
                  ),
              ],
            ),
          ),
          Text(':', style: TextStyle(fontSize: 40, color: Colors.white)),
          Expanded(
            child: PageView(
              scrollDirection: Axis.vertical,
              onPageChanged: (value) {
                minute = value + 1;
              },
              children: [
                for (var i = 0; i < 60; i++)
                  Center(
                    child: Text(
                      '${i + 1}',
                      style: TextStyle(color: Colors.white, fontSize: 45),
                    ),
                  ),
              ],
            ),
          ),
          Text(' ', style: TextStyle(fontSize: 40, color: Colors.white)),
          Expanded(
            child: PageView(
              scrollDirection: Axis.vertical,
              onPageChanged: (value) {
                format = hour4mat[value];
              },
              children: hour4mat
                  .map((e) => Center(
                        child: Text(
                          '$e',
                          style: TextStyle(color: Colors.white, fontSize: 45),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class SetReminderFooter extends StatelessWidget {
  const SetReminderFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Cancel',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white, fontSize: 18),
            ),
          ),
          Container(
            width: 1,
            height: 30,
            color: Colors.white,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(ReminderSet.route),
              child: Text(
                'Set',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.white, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SetReminderTile extends StatelessWidget {
  const SetReminderTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                        'Janeth Okoro',
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
                      '24 June. 2020',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                    )
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 70,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context).primaryColor.withOpacity(.05),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Suit',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
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
                child: Icon(Icons.phone),
              ),
            ],
          )
        ],
      ),
    );
  }
}
