

import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/reserve/widget/my_appbar.dart';
import 'package:flutter_medical/screen/reserve/widget/user_info.dart';
import 'package:flutter_medical/widget/my_header.dart';

class Druggy extends StatefulWidget {
  const Druggy({Key key}) : super(key: key);

  @override
  State<Druggy> createState() => _DruggyState();
}

class _DruggyState extends State<Druggy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          MyHeader(
            height: 300,
            imageUrl: 'assets/images/avatar_head.png',
            child: Column(
              children: <Widget>[
                MyAppbar(),
                SizedBox(
                  height: 16,
                ),
                UserInfo("Ahmed", "p0005"),
              ],
            ),
          ),
        //  GridView(gridDelegate: gridDelegate)
       SingleChildScrollView(child:
       Container(child: Column(
         children: [
 speRow(),
 speRow(),
          
         ],
       ),)),
         
       
        ],
      ),
    );
  }
}

speRow() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
 
      decoration: BoxDecoration(
           color: mBackgroundColor,
        border:Border.all()),
    //  height: MediaQuery.of(context).size.height/2.44,
      //MediaQuery.of(context).size.height/2.44,
      child: Card(
        elevation: 6,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Date :",style: TextStyle(color: mTitleTextColor),),
                  Text("2022-2-2",style: TextStyle(color: mTitleTextColor),),
                  Spacer(),
                  Icon(Icons.check,color: Colors.red,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("drug name :"),
                Text("Pandol"),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("quantity"),
                Text(" 2"),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("discription: "),
                  Text("two times aday after lunch"),
                ],
              ),
            ),
           Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("doctor name: "),
                  Text("Ahmed"),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
