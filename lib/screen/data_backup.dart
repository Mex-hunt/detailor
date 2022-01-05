import 'package:detailor/views/main_button.dart';
import 'package:flutter/material.dart';

class DataBackupScreen extends StatelessWidget {
  static const route = '/settingsdatabackup';
  const DataBackupScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Storage and backup',
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Row(
              children: [
                Icon(Icons.cloud_upload_outlined),
                SizedBox(width: 30),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Last backup',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Theme.of(context).accentColor),
                      ),
                      Text(
                        'Back up your clients details and media to Google Drive.\nYou can restore them when you reinstall Detailor App and Login with the same email.\nA local back up will also be stored on your phonesinternal storage.',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontSize: 12),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Local: 2:00AM',
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Google Drive: June 25, 4:20AM',
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Size: 450 MB',
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Expanded(
                            child: MyMainButton(
                              label: 'BACK UP',
                              onPressed: () {},
                            ),
                          ),
                          Expanded(child: SizedBox())
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Theme.of(context).primaryColor),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Row(
              children: [
                Icon(Icons.folder_outlined),
                SizedBox(width: 30),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Google Drive settings',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Theme.of(context).accentColor),
                      ),
                      Text(
                        'Clients information and media backed up in Google Drive are not protected by Detailor App',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontSize: 12),
                      ),
                      SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Back up to Google Drive',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 14),
                          ),
                          Text(
                            'Weekly',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 3),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Google Account',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 14),
                          ),
                          Text(
                            'loremipsum@gmail.com',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 3),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Back up over',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 14),
                          ),
                          Text(
                            'WIFI or Cellular data',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      IncludeImagesVideos()
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

class IncludeImagesVideos extends StatefulWidget {
  const IncludeImagesVideos({
    Key key,
  });

  @override
  _IncludeImagesVideosState createState() => _IncludeImagesVideosState();
}

class _IncludeImagesVideosState extends State<IncludeImagesVideos> {
  var _include = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Include images and audio',
            style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 14),
          ),
        ),
        Switch(
          value: _include,
          onChanged: (value) {
            setState(() {
              _include = value;
            });
          },
        )
      ],
    );
  }
}
