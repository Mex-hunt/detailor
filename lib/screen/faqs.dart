import 'package:detailor/screen/faq_sent.dart';
import 'package:detailor/views/my_drawer.dart';
import 'package:flutter/material.dart';

class FAQsScreen extends StatelessWidget {
  static const route = '/faqsscreen';
  FAQsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.color,
        title: Text(
          'FAQs',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
      ),
      drawer: MyMainDrawer(),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Container(color: Theme.of(context).primaryColor.withOpacity(.9)),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                FAQTips(title: 'How do I edit a customer profile?'),
                SizedBox(height: 15),
                FAQTips(
                    title: 'How do I customize measurements to suit my style?'),
                SizedBox(height: 15),
                FAQTips(title: 'How do I contact a customer from the App?'),
                SizedBox(height: 15),
                FAQTips(
                  title: 'What is local data back up?',
                ),
                SizedBox(height: 15),
                FAQTips(
                  title: 'How do I set reminders for each job?',
                ),
                SizedBox(height: 15),
                SendFAQ(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SendFAQ extends StatefulWidget {
  const SendFAQ();

  @override
  _SendFAQState createState() => _SendFAQState();
}

class _SendFAQState extends State<SendFAQ> {
  TextEditingController _faqController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: Row(
            children: [
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'No Answer for you?',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          height: null,
          color: Colors.grey.shade600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                minLines: 6,
                maxLines: null,
                controller: _faqController,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.white),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:
                      'Ask us a question and we will reply in due time...',
                ),
              ),
              Divider(color: Colors.white),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => _faqController.clear(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CANCEL',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                    color: Colors.white.withOpacity(.7),
                                  ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 30,
                      color: Colors.white.withOpacity(.5),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          if (_faqController.text.isNotEmpty)
                            await Navigator.of(context)
                                .pushNamed(FAQSent.route);
                          _faqController.clear();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'SEND',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                      color: Colors.white.withOpacity(.7)),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class FAQTips extends StatefulWidget {
  const FAQTips({this.title});

  final String title;

  @override
  _FAQTipsState createState() => _FAQTipsState();
}

class _FAQTipsState extends State<FAQTips> {
  var _expand = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 10),
      curve: Curves.easeInOut,
      child: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Row(
              children: [
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '${widget.title}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      _expand = !_expand;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            height: _expand ? null : 0,
            color: Colors.grey.shade600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 30),
                Text(
                  'Was this helpful?',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white, fontSize: 14),
                ),
                Divider(color: Colors.white),
                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'YES',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                      color: Colors.white.withOpacity(.7)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 30,
                        color: Colors.white.withOpacity(.5),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'NO',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                      color: Colors.white.withOpacity(.7)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
