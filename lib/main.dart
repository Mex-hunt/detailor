import 'package:detailor/screen/about.dart';
import 'package:detailor/screen/auth/login.dart';
import 'package:detailor/screen/auth/signup.dart';
import 'package:detailor/screen/customer_edit.dart';
import 'package:detailor/screen/customer_view.dart';
import 'package:detailor/screen/data_backup.dart';
import 'package:detailor/screen/faq_sent.dart';
import 'package:detailor/screen/faqs.dart';
import 'package:detailor/screen/fashion_tip_view.dart';
import 'package:detailor/screen/fashion_tips.dart';
import 'package:detailor/screen/help.dart';
import 'package:detailor/screen/home.dart';
import 'package:detailor/screen/job_view.dart';
import 'package:detailor/screen/job_view_edit.dart';
import 'package:detailor/screen/my_profile.dart';
import 'package:detailor/screen/my_profile_edit.dart';
import 'package:detailor/screen/new_customer.dart';
import 'package:detailor/screen/new_job.dart';
import 'package:detailor/screen/notification.dart';
import 'package:detailor/screen/reminder_set.dart';
import 'package:detailor/screen/set_reminder.dart';
import 'package:detailor/screen/set_repeat.dart';
import 'package:detailor/screen/settings.dart';
import 'package:detailor/screen/splash.dart';
import 'package:detailor/screen/take_measurement.dart';
import 'package:detailor/screen/welcome.dart';
import 'package:detailor/screen/welcome_one.dart';
import 'package:detailor/screen/welcome_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detailor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(38, 50, 56, 1),
        accentColor: Color.fromRGBO(255, 61, 0, 1),
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme,
          color: Color.fromRGBO(38, 50, 56, 1),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Lora',
            fontWeight: FontWeight.w700,
            fontSize: 36,
            color: Colors.black,
          ),
          headline2: TextStyle(
            fontFamily: 'Segeo',
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          headline3: TextStyle(
            fontFamily: 'Segeo',
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          bodyText1: TextStyle(
            fontFamily: 'Segeo',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          bodyText2: TextStyle(
            fontFamily: 'Segeo',
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            fontFamily: 'Segeo',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          labelStyle: TextStyle(
            fontFamily: 'Segeo',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          helperStyle: TextStyle(
            fontFamily: 'Segeo',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
      home: SplashScreen(),
      routes: {
        WelcomeScreen.route: (ctx) => WelcomeScreen(),
        WelcomeScreenOne.route: (ctx) => WelcomeScreenOne(),
        WelcomeScreenTwo.route: (ctx) => WelcomeScreenTwo(),
        LoginScreen.route: (ctx) => LoginScreen(),
        SignUpScreen.route: (ctx) => SignUpScreen(),
        HomeScreen.route: (ctx) => HomeScreen(),
        FAQsScreen.route: (ctx) => FAQsScreen(),
        FAQSent.route: (ctx) => FAQSent(),
        AboutScreen.route: (ctx) => AboutScreen(),
        SettingsScreen.route: (ctx) => SettingsScreen(),
        NotificationScreen.route: (ctx) => NotificationScreen(),
        DataBackupScreen.route: (ctx) => DataBackupScreen(),
        HelpScreen.route: (ctx) => HelpScreen(),
        FashionTipScreen.route: (ctx) => FashionTipScreen(),
        FashionTipViewScreen.route: (ctx) => FashionTipViewScreen(),
        MyProfileScreen.route: (ctx) => MyProfileScreen(),
        MyProfileEditScreen.route: (ctx) => MyProfileEditScreen(),
        SetReminderScreen.route: (ctx) => SetReminderScreen(),
        SetRepeat.route: (ctx) => SetRepeat(),
        ReminderSet.route: (ctx) => ReminderSet(),
        CustomerViewScreen.route: (ctx) => CustomerViewScreen(),
        CustomerEditScreen.route: (ctx) => CustomerEditScreen(),
        JobViewsScreen.route: (ctx) => JobViewsScreen(),
        JobViewEditScreen.route: (ctx) => JobViewEditScreen(),
        NewCustomerScreen.route: (ctx) => NewCustomerScreen(),
        NewJobScreen.route: (ctx) => NewJobScreen(),
        TakeMeasurement.route: (ctx) => TakeMeasurement(),
      },
    );
  }
}
