import 'package:detailor/screen/customer_edit.dart';
import 'package:detailor/views/customer_jobtile.dart';
import 'package:flutter/material.dart';

class CustomerViewScreen extends StatelessWidget {
  static const route = '/customer_view_screen';
  const CustomerViewScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Customer',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    SizedBox(
                      width: 58,
                      height: 68,
                      child: Stack(
                        children: [
                          CircleAvatar(maxRadius: 29),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 25,
                              height: 25,
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: FittedBox(
                                child: Text(
                                  'M',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Janeth Okoro',
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '53, Sido street, Warri off cemetary road street, Warri, Delta state',
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .accentColor
                                      .withOpacity(.8),
                                  shape: BoxShape.circle,
                                ),
                                child: Text(
                                  '12',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                child: Text(
                                  'Jobs',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).primaryColor.withOpacity(.05),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.circle, color: Colors.grey),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: 45,
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).primaryColor.withOpacity(.05),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.message_outlined,
                                color: Colors.grey),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: 45,
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).primaryColor.withOpacity(.05),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.call_outlined, color: Colors.grey),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushNamed(CustomerEditScreen.route),
                      child: Container(
                        width: 100,
                        height: 36,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                Theme.of(context).primaryColor.withOpacity(.5),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: FittedBox(child: Text('Edit profile')),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Jobs done:',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 190,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (var i = 0; i < 9; i++)
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 2.5),
                            width: 150,
                            height: 190,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.asset(
                                'assets/images/background.png',
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Jobs in Progress:',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Container(
                    width: 100,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(.05),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text('Completed'),
                          SizedBox(width: 5),
                          Icon(Icons.filter_list_outlined)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.of(context).size.height * .8,
                width: double.infinity,
                child: ListView(
                  children: [
                    for (var i = 0; i < 12; i++) CustomerJobTile(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
