import 'package:detailor/screen/customer_view.dart';
import 'package:detailor/views/search_filter.dart';
import 'package:flutter/material.dart';

class CustomersScreen extends StatelessWidget {
  const CustomersScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> customers = ['', '', '', '', '', ''];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SearchFilterField(),
            Expanded(
              child: customers.length < 1
                  ? EmptyCustomerState()
                  : ListView(
                      children: [
                        for (var i = 0; i < customers.length; i++)
                          CustomerTile()
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomerTile extends StatelessWidget {
  const CustomerTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(CustomerViewScreen.route),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            SizedBox(
              width: 58,
              height: 62,
              child: Stack(
                children: [
                  CircleAvatar(maxRadius: 26),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 20,
                      height: 20,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: FittedBox(
                        child: Text(
                          '12',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
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
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).primaryColor.withOpacity(.05),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.message_outlined),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).primaryColor.withOpacity(.05),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.call_outlined),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  Divider(color: Theme.of(context).primaryColor)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EmptyCustomerState extends StatelessWidget {
  const EmptyCustomerState({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Its pretty empty in here, Add your recent jobs and your customers will show up here',
          textAlign: TextAlign.center,
        ),
        Container(
          width: 250,
          height: 50,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color.fromRGBO(249, 249, 249, 1),
          ),
          child: Text(
            'Add customers',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
