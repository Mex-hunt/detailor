import 'package:detailor/screen/home.dart';
import 'package:flutter/material.dart';

class TakeMeasurement extends StatelessWidget {
  static const route = '/takemeasurement';
  const TakeMeasurement({Key key}) : super(key: key);

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
              'Done',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white),
            ),
            onPressed: () => Navigator.of(context)
                .pushNamedAndRemoveUntil(HomeScreen.route, (route) => false),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Measurement details',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 10),
            Text(
              'You can remove irrelevant parameters you don’t need or rename them to suit yourself',
              style:
                  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 12),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Measurement for:',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(width: 10),
                Container(
                  width: 90,
                  height: 40,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(.05),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: FittedBox(child: Text('Shirt')),
                )
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1,
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                children: [for (var i = 0; i < 9; i++) TakeMeasurementTile()],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TakeMeasurementTile extends StatelessWidget {
  const TakeMeasurementTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 96,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(.05),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Neck',
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 12),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.close, size: 12),
                  ),
                ],
              ),
            ),
          ),
          Align(
            child: Container(
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '12',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 30, color: Colors.grey),
                  border: InputBorder.none,
                ),
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
