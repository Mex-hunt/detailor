import 'package:detailor/screen/job_view.dart';
import 'package:detailor/views/search_filter.dart';
import 'package:flutter/material.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> jobs = ['', '', '', '', '', '', ''];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SearchFilterField(),
            Expanded(
              child: jobs.length < 1
                  ? EmptyJobView()
                  : ListView(
                      children: [
                        for (var i = 0; i < 8; i++) JobTile(),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class JobTile extends StatelessWidget {
  const JobTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(JobViewsScreen.route),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            CircleAvatar(maxRadius: 29),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Text(
                        'Janeth Okoro',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 40,
                        height: 20,
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: FittedBox(
                          child: Text('3 days'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 21,
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).primaryColor.withOpacity(.05),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        child: FittedBox(child: Text('due by')),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '24 June. 2020',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 80,
                  height: 34,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(.05),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: FittedBox(child: Text('Police uniform')),
                ),
                SizedBox(width: 10),
                Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(.05),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.call_outlined),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class EmptyJobView extends StatelessWidget {
  const EmptyJobView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'There is nothing here yet, Add recent jobs and they will show up here',
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
            'Add jobs',
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
