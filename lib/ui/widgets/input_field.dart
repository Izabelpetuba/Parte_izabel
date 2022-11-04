import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../theme.dart';

class MyInputField extends StatefulWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget widget;
  const MyInputField({Key? key,
    required this.title,
    required this.hint,
    required this.controller,
    required this.widget
  }) : super(key: key);

  @override
  State<MyInputField> createState() => _MyInputFieldState();
}

class _MyInputFieldState extends State<MyInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:16),
      child: Column(
        children: [
          Text(
            widget.title,
            style: titleStyle ,
          ),
          Container(
            height: 52,
            margin: EdgeInsets.only(top: 8.0),
            padding: EdgeInsets.only(left:14),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0
              ),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    readOnly: widget==null?false:true,
                    autofocus: false,
                    cursorColor: Get.isDarkMode?Colors.grey.shade100:Colors.grey.shade700,
                    controller: widget.controller,
                    style: subTitleStyle,
                    decoration: InputDecoration(
                      hintText: widget.hint,
                      hintStyle: subTitleStyle,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: context.theme.backgroundColor,
                          width: 0
                        )
                    ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: context.theme.backgroundColor,
                          width: 0
                        )
                      )
                  ),

                ),
                ),
                widget==null?Container():Container(child: widget,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
