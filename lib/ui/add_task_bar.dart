import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:notificacoes/ui/theme.dart';
import 'package:notificacoes/ui/widgets/input_field.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage>{
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: _appBar(context),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                  "Add Task",
                style: headingStyle,
              ),
              MyInputField(title: "title", hint:"Enter yout title", controller: null, widget: widget),
              MyInputField(title: "Note", hint:"Enter yout note", controller: null, widget: widget),
              MyInputField(title: "Date", hint: DateFormat.yMd().format(_selectedDate), controller: null,
                  widget: IconButton(
                    icon: Icon(Icons.calendar_today_outlined,
                      color: Colors.grey,

                    ),
                    onPressed: (){
                      print("Hi there");
                      _getDateFromUser();

                    },
                  ),
              ),
            ],
          ),
        )
      ),
    );
  }

  _appBar(BuildContext context){
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Icon(Icons.arrow_back_ios,
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

  _getDateFromUser() async{
     DateTime? _pickerDate = await showDatePicker(
         context: context,
         initialDate: DateTime.now(),
         firstDate: DateTime(2015),
         lastDate: DateTime(2121));

     if(_pickerDate!=null){
      setState(() {
        _selectedDate = _pickerDate;
        print(_selectedDate);
      });
     }else{
       print("It's null or something is wrong");
     }
  }

}
