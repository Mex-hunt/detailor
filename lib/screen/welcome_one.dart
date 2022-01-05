import 'package:detailor/screen/welcome_two.dart';
import 'package:detailor/views/auth_button.dart';
import 'package:detailor/views/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class WelcomeScreenOne extends StatefulWidget {
  static const route = '/welcomescreenone';
  WelcomeScreenOne({Key key}) : super(key: key);

  @override
  _WelcomeScreenOneState createState() => _WelcomeScreenOneState();
}

class _WelcomeScreenOneState extends State<WelcomeScreenOne> {
  List<String> _designs = [
    'Shirts',
    'Trouser',
    'Suit',
    'Agbada',
    'Skirt',
    'Cap',
    'Nose mask',
    'Knicker',
    'Kimono',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Container(color: Theme.of(context).primaryColor.withOpacity(.9)),
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Hi,',
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Let’s jump right in.',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: SizedBox(
                          height: 300,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(height: 50),
                              Text(
                                'What design do you create more?',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(color: Colors.white),
                              ),
                              Expanded(
                                child: StaggeredGridView.countBuilder(
                                  crossAxisCount: 12,
                                  itemCount: _designs.length,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          Designs(label: _designs[index]),
                                  staggeredTileBuilder: (int index) =>
                                      new StaggeredTile.count(
                                          index.isEven ? 4 : 3, 2),
                                  mainAxisSpacing: 4,
                                  crossAxisSpacing: 4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'see more design',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(height: 50)
                    ],
                  ),
                ),
              ),
              AuthButton(
                label: 'Next',
                onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    WelcomeScreenTwo.route, (route) => false),
              ),
            ],
          ),
          SkipButton()
        ],
      ),
    );
  }
}

class Designs extends StatelessWidget {
  const Designs({this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white.withOpacity(.2), width: 1),
        borderRadius: BorderRadius.circular(25),
      ),
      child: FittedBox(
        child: Text(
          '$label',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
