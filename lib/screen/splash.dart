import 'package:detailor/screen/welcome.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) => Navigator.of(context)
          .pushNamedAndRemoveUntil(WelcomeScreen.route, (route) => false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome to',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  'Detailor App',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            Image.asset('assets/images/write.gif'),
            Container(
              child: Text(
                'Digitally record your clients measurement details, access them anywhere and manage your jobs in one App.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
