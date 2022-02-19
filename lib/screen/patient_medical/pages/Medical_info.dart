import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/patient_medical/models/newsInfo.dart';
import 'package:flutter_medical/screen/patient_medical/services/api_manager.dart';
import 'package:flutter_medical/screen/reserve/widget/my_appbar.dart';
import 'package:flutter_medical/screen/reserve/widget/user_info.dart';
import 'package:flutter_medical/widget/my_header.dart';

class MedicalPatient extends StatefulWidget {
  @override
  _MedicalPatientState createState() => _MedicalPatientState();
}

class _MedicalPatientState extends State<MedicalPatient> {
  Future<ProfilePatient> _patientModel;
    var now = DateTime.now().year;
    // var dt = DateTime(.now);
  @override
  void initState() {
    _patientModel = Medical_api().getNews();
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
        child: FutureBuilder<ProfilePatient>(
          future: _patientModel,
          builder: (context, snapshot) {
            print(snapshot.connectionState.toString());
            if (snapshot.hasData) {
            //   Map allData=snapshot.data.data.medical;
             String genderid = snapshot.data.data.user.genderId.toString();
              String gender;
              if (genderid == "1") {
                gender = "male";
              } else {
                gender = "Female";
              }
              var dis=snapshot.data.data.medical.diseases.length;
              var drug =snapshot.data.data.medical.drugs.length;
          int age = now - snapshot.data.data.dateOfBirth.year;
          String smoker = snapshot.data.data.medical.smoking ;
         // if (snapshot.data.data.medical.smoking=="1"){smoker=mButtonColor;}
            String drinker = snapshot.data.data.medical.drinking ;
          //if (snapshot.data.data.medical.drinking=="1"){drinker=mButtonColor;}
          
// setState(() {

// });
              print("has data");
              // Text("kvffff");
              return Container(
                color: Colors.white,
                child: ListView(
                //  reverse: true,
                  children: [
                    TrueORFalse( Icons.smoking_rooms,"Smoking ", snapshot.data.data.medical.smoking),
                     TrueORFalse( Icons.local_drink,"drinking ", snapshot.data.data.medical.drinking),
                    
                    speRow("Animals",snapshot.data.data.medical.animals,
                        Icons.pets),
                    speRow(
                        "social_history ", snapshot.data.data.medical.socialHistory, Icons.history),
                         speRow(
                        "diseases ", snapshot.data.data.medical.socialHistory, Icons.history),
ListTile(
  leading:Icon(Icons.list,color: mYellowColor,),
  title: Text("Diseases"),
  onTap: (){
  // setState(() {
  //   _cardList.add(_card());
  // });

  },
),
ListTile(
  leading:Icon(Icons.list,color: mYellowColor,),
  title: Text("drugs"),
  onTap: (){
  // setState(() {
  //   _cardList.add(_card());
  // });

  },
),
                    
                  ],
                ),
              );
    

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
TrueORFalse(IconData icon , String title , String data){
  return Container(
    height: 50,
    child: Card(
      elevation: 0.7,
      child: Row( mainAxisAlignment: MainAxisAlignment.start,
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
          Icon(icon, color: data == "1" ? Colors.green : Colors.grey ,)
         // Text(data),

      ],),
    ),
  );

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
