import 'package:detailor/screen/new_job.dart';
import 'package:flutter/material.dart';

class NewCustomerScreen extends StatelessWidget {
  static const route = '/newcustomer';
  const NewCustomerScreen({Key key}) : super(key: key);

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
                  .bodyText2
                  .copyWith(color: Colors.white),
            ),
            onPressed: () =>
                Navigator.of(context).pushNamed(NewJobScreen.route),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Text(
              'Customer details',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Stack(
                children: [
                  Align(child: CircleAvatar(maxRadius: 50)),
                  Align(
                    child: IconButton(
                      icon: Icon(Icons.add_a_photo_outlined),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
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
                      labelText: 'Customer name',
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
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).accentColor),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      labelText: 'Phone number',
                      labelStyle: Theme.of(context)
                          .inputDecorationTheme
                          .labelStyle
                          .copyWith(color: Colors.black),
                      suffix: IconButton(
                        icon: Icon(Icons.contacts, color: Colors.black),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    maxLines: 3,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).accentColor),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      labelText: 'Address',
                      labelStyle: Theme.of(context)
                          .inputDecorationTheme
                          .labelStyle
                          .copyWith(color: Colors.black),
                      suffix: IconButton(
                        icon: Icon(Icons.contacts, color: Colors.black),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Entry date',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).primaryColor.withOpacity(.1),
                      filled: true,
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.calendar_today_outlined),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Delivery date',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    enabled: false,
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).primaryColor.withOpacity(.1),
                      filled: true,
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.calendar_today_outlined),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
