import 'package:flutter/material.dart';
import 'package:flutter_medical/widget/header_logo.dart';
import 'package:flutter_medical/widget/my_header.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyHeader(
            height: //535,
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? MediaQuery.of(context).size.height / 3
                    : MediaQuery.of(context).size.height / 2.66,
            imageUrl: 'assets/images/welcome.png',
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset("assets/images/patient_profile.png"),
            ),
          ),
          MainInfo(),
        ],
      ),
    );
  }
}

class MainInfo extends StatelessWidget {
  const MainInfo({Key key, int}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        color: Colors.red,
        child: Text("Name \n Patient Name"),
      ),
    );
  }
}
