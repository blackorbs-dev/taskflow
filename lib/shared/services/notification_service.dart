import 'dart:io' show Platform;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  final _plugin = FlutterLocalNotificationsPlugin();
  final _notificationId = 1;

  NotificationService() { _initialise(); }

  void _initialise() async{
    final initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );
    await _plugin.initialize(settings: initializationSettings);
    // requestNotificationPermission();
  }

  void showNotification(String message) {
    _plugin.show(
      id: _notificationId,
      title: "Task Update",
      body: message,
      notificationDetails: const NotificationDetails(
        android: AndroidNotificationDetails(
            'sub_tracker_channel', 'Subscription Tracker'
        ),
        iOS: DarwinNotificationDetails(),
      ),
    );
  }

  Future<void> cancelNotification() => _plugin.cancel(id: _notificationId);

  Future<void> requestNotificationPermission() async{
    if (Platform.isAndroid) {
      await _plugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
    }
  }
}
