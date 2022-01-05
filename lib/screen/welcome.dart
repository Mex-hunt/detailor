import 'package:detailor/screen/welcome_one.dart';
import 'package:detailor/views/auth_button.dart';
import 'package:detailor/views/select_button.dart';
import 'package:detailor/views/skip_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const route = '/welcomescreen';
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Container(color: Theme.of(context).primaryColor.withOpacity(.9)),
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Hi,',
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Let’s jump right in.',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height: 50),
                            Text(
                              'Who do you design for more often?',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(height: 30),
                            CustomSelectButton(
                              label: 'Both',
                              onTap: () => Navigator.of(context)
                                  .pushNamedAndRemoveUntil(
                                      WelcomeScreenOne.route, (route) => false),
                            ),
                            SizedBox(height: 15),
                            CustomSelectButton(
                              label: 'Female',
                              onTap: () => Navigator.of(context)
                                  .pushNamedAndRemoveUntil(
                                      WelcomeScreenOne.route, (route) => false),
                            ),
                            SizedBox(height: 15),
                            CustomSelectButton(
                              label: 'Male',
                              onTap: () => Navigator.of(context)
                                  .pushNamedAndRemoveUntil(
                                      WelcomeScreenOne.route, (route) => false),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50)
                    ],
                  ),
                ),
              ),
              AuthButton(label: 'I already have an account'),
            ],
          ),
          SkipButton()
        ],
      ),
    );
  }
}
