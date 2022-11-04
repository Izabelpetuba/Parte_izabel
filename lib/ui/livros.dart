import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//import 'package:get/get.dart';
import 'package:notificacoes/services/theme_services.dart';
import 'package:notificacoes/ui/add_task_bar.dart';
import 'package:notificacoes/ui/theme.dart';
import 'package:notificacoes/ui/widgets/button.dart';

//import '../main.dart';
import '../main.dart';
import '../services/notification_services.dart';

class Livros extends StatefulWidget {
  const Livros({Key? key}) : super(key: key);

  @override
  State<Livros> createState() => _LivrosState();
}

class _LivrosState extends State<Livros> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          _addTaskBar(),
          _addDateBar(),

        ],
      ),
    );
  }

  _addDateBar(){
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20),
      child: DatePicker(
        DateTime.now(),
        height: 100,
        width: 80,
        initialSelectedDate: DateTime.now(),
        selectionColor: primaryClr,
        selectedTextColor: Colors.white,
        dateTextStyle: GoogleFonts.lato(
          textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.grey
          ),
        ),
        dayTextStyle: GoogleFonts.lato(
          textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey
          ),
        ),
        monthTextStyle: GoogleFonts.lato(
          textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey
          ),
        ),
        onDateChange: (date){
          _selectedDate=date;
        },
      ),
    );
  }
  _addTaskBar(){
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            //margin: const EdgeInsets.symmetric(horizontal:20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(DateFormat.yMMMMd().format(DateTime.now()),
                  style: subHeadingStyle,
                ),
                Text("Today",
                  style: headingStyle,)
              ],
            ),
          ),
          MyButton(label: "+ Add book", onTap: () => Get.to(AddTaskPage()))
        ],
      ),
    );
  }
  _appBar(){
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: () async {
          ThemeService().switchTheme();
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
              "Belle Belinha fodar",
              notiDetails
          );


        },
        child: Icon(Get.isDarkMode ?Icons.wb_sunny_outlined:Icons.nightlight_round,
        size: 20,
          color: Get.isDarkMode ? Colors.white:Colors.black,
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundImage: AssetImage(
            "images/perfil.png"
          ),
        ),
      ],
    );
  }
}
