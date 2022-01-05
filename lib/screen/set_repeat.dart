import 'package:detailor/screen/set_reminder.dart';
import 'package:flutter/material.dart';

class SetRepeat extends StatefulWidget {
  static const route = '/setrepeat';
  const SetRepeat({Key key}) : super(key: key);

  @override
  _SetRepeatState createState() => _SetRepeatState();
}

class _SetRepeatState extends State<SetRepeat> {
  List<bool> isSelected = [true, false];
  List<String> days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
  List<bool> daySelected = [true, true, true, true, true, false, false];
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
            SizedBox(height: 10),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      alignment: Alignment.centerLeft,
                      height: 50,
                      child: Text(
                        'Repeat',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 70,
                      child: ToggleButtons(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 15,
                            ),
                            child: Text(
                              'Weekday',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            child: Text(
                              'Weekend',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ],
                        isSelected: isSelected,
                        onPressed: (int index) {
                          setState(() {
                            for (int i = 0; i < isSelected.length; i++) {
                              isSelected[i] = i == index;
                            }
                            if (index == 0) {
                              daySelected = [
                                true,
                                true,
                                true,
                                true,
                                true,
                                false,
                                false
                              ];
                            } else {
                              daySelected = [
                                false,
                                false,
                                false,
                                false,
                                false,
                                true,
                                true
                              ];
                            }
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            for (var i = 0; i < 7; i++)
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${days[i]}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: Colors.white),
                                  ),
                                  Checkbox(
                                    value: daySelected[i],
                                    onChanged: (value) {
                                      setState(() {
                                        daySelected[i] = value;
                                      });
                                    },
                                  ),
                                ],
                              )
                          ],
                        ),
                      ),
                    ),
                    SetRepeatFooter(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SetRepeatFooter extends StatelessWidget {
  const SetRepeatFooter({
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
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Text(
                'Cancel',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          Container(
            width: 1,
            height: 30,
            color: Colors.white,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
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
