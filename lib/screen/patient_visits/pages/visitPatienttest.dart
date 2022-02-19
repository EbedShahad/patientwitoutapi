import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/patient_deals/pages/dealpatient.dart';
import 'package:flutter_medical/screen/patient_visits/models/visitsInfo.dart';
import 'package:flutter_medical/screen/patient_visits/services/visit_manger.dart';

import 'package:flutter_medical/screen/reserve/widget/my_appbar.dart';
import 'package:flutter_medical/screen/reserve/widget/user_info.dart';
import 'package:flutter_medical/widget/my_header.dart';

class testvisit extends StatefulWidget {
  @override
  _testvisitState createState() => _testvisitState();
}

class _testvisitState extends State<testvisit> {
  Future<PatientVisit> _patientModel;
  var now = DateTime.now().year;
  // var dt = DateTime(.now);
  @override
  void initState() {
    // _patientModel = Visit_Manager().getNews();
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
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                 Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return PatientDeals();
                              },
                            ),
                          );
              },
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: mSecondBackgroundColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    //  shape:ShapeBorder.lerp(a, b, t)
                    //  shape: ShapeBorder.lerp(Sh, b, t)
                    color: mBackgroundColor,
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.medical_services,color: mYellowColor,),
                                Text("File No. "+"P0043s", style: TextStyle(color: mTitleTextColor),),
                                Text("2020-8-3",style: TextStyle(color: mTitleTextColor),),
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Compliants: ",style: TextStyle(color: mTitleTextColor),),
                                Text("Headache " + " Back Pain",style: TextStyle(color: mTitleTextColor),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("Notes :",style: TextStyle(color: mTitleTextColor),),
                                Text("shahad has over thinking",style: TextStyle(color: mTitleTextColor),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

/*
      "visit_date": "2020-8-3",
        "notes": "no thing",
        "patient_id": "11",
        "provider_id": "25",
        "attach": "1645091578_final-document-2.docx",
        "updated_at": "2022-02-17T09:52:58.000000Z",
        "created_at": "2022-02-17T09:52:58.000000Z", */
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
