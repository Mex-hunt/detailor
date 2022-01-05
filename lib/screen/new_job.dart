import 'package:detailor/screen/take_measurement.dart';
import 'package:flutter/material.dart';

class NewJobScreen extends StatelessWidget {
  static const route = '/newjobsscreen';
  const NewJobScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Job',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
        actions: [
          FlatButton(
            child: Text(
              'Next',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white),
            ),
            onPressed: () =>
                Navigator.of(context).pushNamed(TakeMeasurement.route),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Text(
              'Job details',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Pictures of Design styles and Material ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 12),
                ),
                Text(
                  '(optional)',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontSize: 12, color: Theme.of(context).accentColor),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 120,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.asset(
                            'assets/images/background.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(.8),
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.add_a_photo_outlined),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(.8),
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.file_upload),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Design/Style photo',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.asset(
                            'assets/images/background.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(.8),
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.add_a_photo_outlined),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Material image',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      labelText: 'Sex',
                      labelStyle: Theme.of(context)
                          .inputDecorationTheme
                          .labelStyle
                          .copyWith(color: Colors.black),
                      suffix: IconButton(
                        icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'What do you want to create?',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).primaryColor.withOpacity(.1),
                      filled: true,
                      hintText: 'New style',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(color: Colors.grey),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              for (var i = 0; i < 6; i++)
                                Container(
                                  width: 90,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(.05),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 2.5),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 2,
                                  ),
                                  child: FittedBox(child: Text('Trouser')),
                                )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 13,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(6)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          maxLines: null,
                          minLines: 1,
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(.05),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.mic),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'OR say something you want to remember',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: 12,
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
