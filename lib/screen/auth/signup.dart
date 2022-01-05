import 'package:detailor/screen/auth/login.dart';
import 'package:detailor/screen/home.dart';
import 'package:detailor/views/main_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const route = '/signup_screen';
  const SignUpScreen({Key key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int _current = 0;
  List<Widget> _widget = [CreateAccountStepOne(), CreateAccountStepTwo()];
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Create Account',
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          .copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Save measurements and manage your customer’s details wherever you are, easily and securely',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
                _widget[_current],
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 20,
                      color: _current == 0
                          ? Theme.of(context).accentColor
                          : Colors.white,
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 1,
                      width: 20,
                      color: _current == 1
                          ? Theme.of(context).accentColor
                          : Colors.white,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      child: MyMainButton(
                        label: _current == 1 ? 'Done' : 'Continue',
                        onPressed: _current == 1
                            ? () => Navigator.of(context)
                                .pushNamedAndRemoveUntil(
                                    HomeScreen.route, (route) => false)
                            : () {
                                setState(() {
                                  _current = 1;
                                });
                              },
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              LoginScreen.route, (route) => false),
                      child: Text(
                        'Have an Account? Login',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CreateAccountStepOne extends StatelessWidget {
  const CreateAccountStepOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelText: 'Name',
                labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                labelText: 'Business Name',
                labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.text,
              minLines: 2,
              maxLines: 3,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                labelText: 'Business Address',
                labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateAccountStepTwo extends StatelessWidget {
  const CreateAccountStepTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelText: 'Phone Number',
                labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                labelText: 'Password',
                labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                labelText: 'Confirm Password',
                labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
