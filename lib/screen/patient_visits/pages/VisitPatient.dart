import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/patient_visits/models/visitsInfo.dart';
import 'package:flutter_medical/screen/patient_visits/services/visit_manger.dart';

import 'package:flutter_medical/screen/reserve/widget/my_appbar.dart';
import 'package:flutter_medical/screen/reserve/widget/user_info.dart';
import 'package:flutter_medical/widget/my_header.dart';

class PatientVisits extends StatefulWidget {
  @override
  _PatientVisitsState createState() => _PatientVisitsState();
}

class _PatientVisitsState extends State<PatientVisits> {
  Future<PatientVisit> _patientModel;
    var now = DateTime.now().year;
    // var dt = DateTime(.now);
  @override
  void initState() {
    _patientModel = Visit_Manager().getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: MyHeader(
            height: 220,
            imageUrl: 'assets/images/avatar_head.png',
            child: Column(
              children: <Widget>[
                MyAppbar(),
                SizedBox(
                  height: 16,
                ),
                UserInfo("Shahad", "P0043"),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(300)),
      body: Container(
        child: FutureBuilder<PatientVisit>(
          future: _patientModel,
          builder: (context, snapshot) {

            print(snapshot.connectionState.toString());
            if (snapshot.hasData) {
               int datalen=snapshot.data.data.length;
            //   String allData=snapshot.data.data[].;
        return  ListView.builder(
    shrinkWrap: true,
    itemCount: datalen,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        color: Colors.blue,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        child: Text(
          snapshot.data.data[index].notes.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      );
    });
            

            } else {
              print("Return value");
              return Center(
                  child: CircularProgressIndicator(
                color: mButtonColor,
              ));
            }
          },
        ),
      ),

    
    );
  }
}

speRow(String title, String data, IconData icon) {
  return Container(
    height: 50,
    //MediaQuery.of(context).size.height/2.44,
    child: Card(
      elevation: 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: mYellowColor,
              size: 30,
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text(":   "),
          Text(data),
        ],
      ),
    ),
  );
}
