import 'package:flutter/material.dart';

class CustomerJobTile extends StatelessWidget {
  const CustomerJobTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
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
          SizedBox(width: 5),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Janeth Okoro',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 21,
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
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 20,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Theme.of(context).primaryColor.withOpacity(.05),
                      ),
                      child: FittedBox(child: Text('Paid')),
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
    );
  }
}
