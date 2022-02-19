import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';


InputDecoration buildInputDecoration(IconData icons, String hinttext) {
  return InputDecoration(
    
    hintText: hinttext,
    prefixIcon: Icon(icons, color: mPrimaryTextColor,),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color:mPrimaryTextColor, width: 1.5),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color:mPrimaryTextColor,
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: mPrimaryTextColor,
        width: 1.5,
      ),
    ),
  );
}
