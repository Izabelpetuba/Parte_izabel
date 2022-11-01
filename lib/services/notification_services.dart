/*
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();

class NotifyHelper{
  //WidgetsFlutterBinding.ensureInitialized();
  AndroidInitializationSettings androidSettings = AndroidInitializationSettings("@mipmap/ic_launcher");

  DarwinInitializationSettings iosSettings = DarwinInitializationSettings(
    requestSoundPermission: true,
    requestBadgePermission: true,
    requestCriticalPermission: true,
    requestAlertPermission: true,
  );



  void showNotification() async {

    InitializationSettings initializationSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    bool? initialized = await notificationsPlugin.initialize(initializationSettings);

    Get.dialog(Text("Welcome to Notification"));

    AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      "as-app",
      "ASApp",
      priority: Priority.max,
      importance: Importance.max,
    );

    DarwinNotificationDetails iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    NotificationDetails notiDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await notificationsPlugin.show(
        0,
        "Notificação teste",
        "Seja bem vindo, queridinha!",
        notiDetails
    );


  }

}


 */

