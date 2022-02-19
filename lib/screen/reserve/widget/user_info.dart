import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';

class UserInfo extends StatelessWidget {
  String name1;
  String fileNum1;
 UserInfo(String name, String fileNum){
   name1=name;
   fileNum1=fileNum;
 }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/avatar.png',
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.name1,
                style: TextStyle(
                  color: mButtonColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                fileNum1,
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
