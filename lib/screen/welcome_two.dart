import 'package:detailor/screen/auth/login.dart';
import 'package:detailor/screen/welcome_one.dart';
import 'package:detailor/views/auth_button.dart';
import 'package:detailor/views/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class WelcomeScreenTwo extends StatefulWidget {
  static const route = '/welcomescreentwo';
  WelcomeScreenTwo({Key key}) : super(key: key);

  @override
  _WelcomeScreenTwoState createState() => _WelcomeScreenTwoState();
}

class _WelcomeScreenTwoState extends State<WelcomeScreenTwo> {
  List<String> _designs = [
    'Neck',
    'Neckline',
    'Bustpoint',
    'Underbust',
    'Bust',
    'Chest',
    'Gown length',
    'Blouse length',
    'Trouser length',
    'Thigh',
    'Armhole',
    'Sleeve length',
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
                          height: 400,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                'Select measurements you work with',
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
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'You can remove measurements you don’t need or rename them later to suit yourself',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'see more measurements',
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
                    LoginScreen.route, (route) => false),
              ),
            ],
          ),
          SkipButton()
        ],
      ),
    );
  }
}
