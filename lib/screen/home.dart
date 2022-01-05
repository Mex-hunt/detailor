import 'package:detailor/screen/customers.dart';
import 'package:detailor/screen/gallery.dart';
import 'package:detailor/screen/jobs.dart';
import 'package:detailor/screen/new_customer.dart';
import 'package:detailor/screen/new_job.dart';
import 'package:detailor/screen/updates.dart';
import 'package:detailor/views/my_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/homescreen';
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _current = 0;
  List<Widget> _screens = [
    JobsScreen(),
    CustomersScreen(),
    GalleryScreen(),
    UpdatesScreen(),
  ];
  List<String> _titles = ['Jobs', 'Customers', 'Gallery', 'Updates'];

  @override
  Widget build(BuildContext context) {
    List<Function> _function = [
      () => Navigator.of(context).pushNamed(NewCustomerScreen.route),
      () => Navigator.of(context).pushNamed(NewCustomerScreen.route),
      () => Navigator.of(context).pushNamed(NewCustomerScreen.route),
      () => Navigator.of(context).pushNamed(NewCustomerScreen.route),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.color,
        title: Text(
          _titles[_current],
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
      ),
      drawer: MyMainDrawer(),
      body: _screens[_current],
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        child: Icon(Icons.add),
        onPressed: _function[_current],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: _current == 0
                  ? Icon(Icons.work, color: Colors.black)
                  : Icon(Icons.work_outline, color: Colors.grey),
              onPressed: () {
                setState(() {
                  _current = 0;
                });
              },
            ),
            IconButton(
              icon: _current == 1
                  ? Icon(Icons.people, color: Colors.black)
                  : Icon(Icons.people_outline, color: Colors.grey),
              onPressed: () {
                setState(() {
                  _current = 1;
                });
              },
            ),
            SizedBox(),
            IconButton(
              icon: _current == 2
                  ? Icon(Icons.photo, color: Colors.black)
                  : Icon(Icons.photo_outlined, color: Colors.grey),
              onPressed: () {
                setState(() {
                  _current = 2;
                });
              },
            ),
            IconButton(
              icon: _current == 3
                  ? Icon(Icons.notifications, color: Colors.black)
                  : Icon(Icons.notifications_outlined, color: Colors.grey),
              onPressed: () {
                setState(() {
                  _current = 3;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
