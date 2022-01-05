import 'package:flutter/material.dart';

class CustomerEditScreen extends StatelessWidget {
  static const route = '/customer_edit_screen';
  const CustomerEditScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Customers',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
        actions: [
          FlatButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'SAVE',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Text(
              'Edit profile',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Align(
              child: SizedBox(
                width: 100,
                height: 100,
                child: Stack(
                  children: [
                    CircleAvatar(maxRadius: 50),
                    Align(
                      child: IconButton(
                        icon: Icon(Icons.add_a_photo_outlined),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
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
                      labelText: 'Customer Name',
                      labelStyle: Theme.of(context)
                          .inputDecorationTheme
                          .labelStyle
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
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
                      labelText: 'Phone number',
                      labelStyle: Theme.of(context)
                          .inputDecorationTheme
                          .labelStyle
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    maxLines: 3,
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
                      labelText: 'Address',
                      labelStyle: Theme.of(context)
                          .inputDecorationTheme
                          .labelStyle
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                  ),
                  SizedBox(height: 30),
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
                          color:
                              Theme.of(context).primaryColor.withOpacity(.05),
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
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: MediaQuery.of(context).size.height * .8,
              child: ListView(
                children: [
                  for (var i = 0; i < 12; i++) EditCustomerTiles(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EditCustomerTiles extends StatelessWidget {
  const EditCustomerTiles({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 58,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    'assets/images/background.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 20,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: FittedBox(
                            child: Text('2 weeks'),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'N2500',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 20,
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color:
                                Theme.of(context).accentColor.withOpacity(.6),
                          ),
                          child: FittedBox(child: Text('Paid')),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            '24 June. 2020',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(
                                    fontWeight: FontWeight.w600, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(.05),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: FittedBox(
                      child: Text('Trouser'),
                    ),
                  ),
                  SizedBox(width: 5),
                  CircleAvatar(
                    maxRadius: 29,
                    backgroundImage: AssetImage('assets/images/background.png'),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 5),
          SizedBox(
            height: 40,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Divider(
                    color: Theme.of(context).primaryColor.withOpacity(.3),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(.5),
                        ),
                        child: Icon(
                          Icons.delete_outline,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(.5),
                        ),
                        child: Icon(
                          Icons.share_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
