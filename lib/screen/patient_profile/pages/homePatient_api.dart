

import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/reserve/widget/my_appbar.dart';
import 'package:flutter_medical/screen/reserve/widget/user_info.dart';
import 'package:flutter_medical/widget/my_header.dart';

class Homme extends StatefulWidget {
  const Homme({Key key}) : super(key: key);

  @override
  State<Homme> createState() => _HommeState();
}

class _HommeState extends State<Homme> {
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
       SingleChildScrollView(child:Container(child: Column(
         children: [
 speRow("Name ", "Ahmed", Icons.person),
          speRow("email ", "Ahmed@gmail.com",Icons.email),
          speRow("userPhone ", "0905824277",Icons.phone),
          speRow("Address ", "Khartoum , South Gabra 14",Icons.home),
          speRow("Gender ", "Ahmed",Icons.male),
         ],
       ),)),
         
       
        ],
      ),
    );
  }
}

speRow(String title, String data, IconData icon) {
  return Container(
    height: 50,
    //MediaQuery.of(context).size.height/2.44,
    child: Card(
      elevation: 4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon,color: mYellowColor,size: 30,),
          ),
          Text(title, style: TextStyle(fontSize: 20),),
          Text(":   "),
          Text(data),
        ],
      ),
    ),
  );
}
