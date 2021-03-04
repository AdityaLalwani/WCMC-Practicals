import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';

class Practical6 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Practical6> {
  FlutterLocalNotificationsPlugin fltrNotification;

  @override
  void initState() {
    super.initState();
    var androidInitilize = AndroidInitializationSettings('mipmap/ic_launcher');

    var initilizationsSettings =
        InitializationSettings(android: androidInitilize);
    fltrNotification = FlutterLocalNotificationsPlugin();
    fltrNotification.initialize(initilizationsSettings);
  }

  Future _showNotification() async {
    var androidDetails = new AndroidNotificationDetails(
        "Channel ID", "18IT052", "channel description",
        importance: Importance.max);

    var generalNotificationDetails =
        new NotificationDetails(android: androidDetails);

    await fltrNotification.show(
        0, "Notification", "!!! Notification !!!", generalNotificationDetails,
        payload: "Task");
  }

  Future<void> showBigPictureNotification() async {
    var bigPictureStyleInformation = BigPictureStyleInformation(
      DrawableResourceAndroidBitmap("mipmap/ic_launcher"),
      largeIcon: DrawableResourceAndroidBitmap("mipmap/ic_launcher"),
      contentTitle: 'flutter devs',
      summaryText: 'summaryText',
    );
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'big text channel id',
        'big text channel name',
        'big text channel description',
        styleInformation: bigPictureStyleInformation);
    var platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await fltrNotification.show(
        0, 'big text title', 'silent body', platformChannelSpecifics,
        payload: "big image notifications");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: _showNotification,
              child: new Text(
                'showNotification',
              ),
            ),
            RaisedButton(
              onPressed: showBigPictureNotification,
              child: new Text(
                'showBigPictureNotification',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
