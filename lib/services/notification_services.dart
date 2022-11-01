
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();

void NotifyHelper() async{
  WidgetsFlutterBinding.ensureInitialized();
  AndroidInitializationSettings androidSettings = AndroidInitializationSettings("@mipmap/ic_launcher");

  DarwinInitializationSettings iosSettings = DarwinInitializationSettings(
    requestSoundPermission: true,
    requestBadgePermission: true,
    requestCriticalPermission: true,
    requestAlertPermission: true,
  );

  InitializationSettings initializationSettings = InitializationSettings(
    android: androidSettings,
    iOS: iosSettings,
  );

  bool? initialized = await notificationsPlugin.initialize(initializationSettings);

  Get.dialog(Text("Welcome to Notification"));
}