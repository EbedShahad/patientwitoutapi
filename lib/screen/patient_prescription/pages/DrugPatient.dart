import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/patient_prescription/models/newsInfo.dart';
import 'package:flutter_medical/screen/patient_prescription/services/api_manager.dart';
import 'package:flutter_medical/screen/reserve/widget/my_appbar.dart';
import 'package:flutter_medical/screen/reserve/widget/user_info.dart';
import 'package:flutter_medical/widget/my_header.dart';

class DrugPAtient extends StatefulWidget {
  @override
  _DrugPAtientState createState() => _DrugPAtientState();
}

class _DrugPAtientState extends State<DrugPAtient> {
  Future<DrugsToPatient> _patientModel;
    var now = DateTime.now().year;
    // var dt = DateTime(.now);
  @override
  void initState() {
    _patientModel = Drug_Manager().getNews();
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
        child: FutureBuilder<DrugsToPatient>(
          future: _patientModel,
          builder: (context, snapshot) {
            print(snapshot.connectionState.toString());
            if (snapshot.hasData) {
              print("dddddddddddddddd");
              print(snapshot.data.data[0]);
              print(snapshot.data.data[0].status);
            var status = snapshot.data.data[0].status;
             Color gender;
              if (status == "1") {
                gender =Colors.green;
              } else {
                gender = Colors.red;
              }
         //  int age = now - snapshot.data.data.dateOfBirth.year;
// setState(() {

// });
              print("has data");
              // Text("kvffff");
              return Container(
                color: Colors.white,
                child: ListView(
                //  reverse: true,
                  children: [
                    // speRow("File Number ", snapshot.data.data.fileNumber,
                    //     Icons.person),

                    // speRow("Name ", snapshot.data.data.user.name, Icons.person),
                    // speRow("Age", age.toString(),
                    //     Icons.male),
                    // speRow(
                    //     "email ", snapshot.data.data.user.email, Icons.email),
                    // speRow("userPhone ", snapshot.data.data.user.userPhone,
                    //     Icons.phone),
                    // speRow("Address ", snapshot.data.data.user.address,
                    //     Icons.home),
                    // //  snapshot.data.data.user.name;
                    // speRow("Gender ", gender, Icons.male),
                    //  speRow("Height ",snapshot.data.data.height , Icons.height),
                    //   speRow("Job titile ",snapshot.data.data.jobTitle , Icons.work),
                    //    speRow("Height ",snapshot.data.data.martialStatus , Icons.ring_volume),
                    //   speRow("Blood Group ", snapshot.data.data.bloodGroup, Icons.bloodtype),
                  ],
                ),
              );
    

            } else {
              print(snapshot);
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
