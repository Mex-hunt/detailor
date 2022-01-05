import 'package:detailor/screen/my_profile_edit.dart';
import 'package:detailor/views/my_drawer.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  static const route = '/myprofile';
  const MyProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
      ),
      drawer: MyMainDrawer(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/store.png',
                  width: double.infinity,
                  height: double.maxFinite,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: double.maxFinite,
                  width: double.infinity,
                  color: Theme.of(context).primaryColor.withOpacity(.6),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(maxRadius: 50),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.person_outline,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Personal info:',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.grey),
                          ),
                        ],
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
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(.3),
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text('Edit'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          enabled: false,
                          keyboardType: TextInputType.phone,
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
                            labelText: 'Name',
                            labelStyle: Theme.of(context)
                                .inputDecorationTheme
                                .labelStyle
                                .copyWith(
                                    color: Theme.of(context).primaryColor),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          enabled: false,
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
                            labelText: 'Phone number',
                            labelStyle: Theme.of(context)
                                .inputDecorationTheme
                                .labelStyle
                                .copyWith(
                                    color: Theme.of(context).primaryColor),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          enabled: false,
                          keyboardType: TextInputType.phone,
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
                            labelText: 'Email',
                            labelStyle: Theme.of(context)
                                .inputDecorationTheme
                                .labelStyle
                                .copyWith(
                                    color: Theme.of(context).primaryColor),
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.store,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Business info:',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          enabled: false,
                          keyboardType: TextInputType.phone,
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
                            labelText: 'Business Name',
                            labelStyle: Theme.of(context)
                                .inputDecorationTheme
                                .labelStyle
                                .copyWith(
                                  color: Theme.of(context).primaryColor,
                                ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          enabled: false,
                          keyboardType: TextInputType.phone,
                          minLines: 2,
                          maxLines: null,
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
                            labelText: 'Business Address',
                            labelStyle: Theme.of(context)
                                .inputDecorationTheme
                                .labelStyle
                                .copyWith(
                                  color: Theme.of(context).primaryColor,
                                ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          enabled: false,
                          keyboardType: TextInputType.phone,
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
                            labelText: 'Business Email',
                            labelStyle: Theme.of(context)
                                .inputDecorationTheme
                                .labelStyle
                                .copyWith(
                                    color: Theme.of(context).primaryColor),
                          ),
                        ),
                        SizedBox(height: 30),
                      ],
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
