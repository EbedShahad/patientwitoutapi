import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/patient_deals/models/patinetInfo.dart';
import 'package:flutter_medical/screen/patient_results/pages/resulttest.dart';
import 'package:flutter_medical/screen/reserve/widget/my_appbar.dart';
import 'package:flutter_medical/screen/reserve/widget/user_info.dart';
import 'package:flutter_medical/widget/menu_card.dart';
import 'package:flutter_medical/widget/my_header.dart';

class PatientDeals extends StatefulWidget {
  @override
  _PatientDealsState createState() => _PatientDealsState();
}

class _PatientDealsState extends State<PatientDeals> {
  // Future<PaDeals> _patientModel;
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration:
              BoxDecoration(color: mBackgroundColor, shape: BoxShape.rectangle),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 3,
                          // MediaQuery.of(context).size.height /1,
                          // width: double.infinity,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // borderRadius: BorderRadius.circular(100),
                            color: mButtonColor,

                            //    image: DecorationImage(image:AssetImage('assets/images/lab/laboratory(1).png'))
                          ),
                          child: CircleAvatar(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/lab/laboratory(1).png'),
                                color: mBackgroundColor,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Lab Exams",
                          style: TextStyle(color: mTitleTextColor),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return testResult();
                              },
                            ),
                          );
                        
                      },
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width / 3,
                            // MediaQuery.of(context).size.height /1,
                            // width: double.infinity,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // borderRadius: BorderRadius.circular(100),
                              //   color:mButtonColor,
                    
                              //    image: DecorationImage(image:AssetImage('assets/images/lab/laboratory(1).png'))
                            ),
                            child: CircleAvatar(
                              child: Image(
                                image: AssetImage('assets/images/lab/result.png'),
                                // color:mBackgroundColor,
                              ),
                            ),
                          ),
                          Text(
                            "Lab results",
                            style: TextStyle(color: mTitleTextColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell (
                    onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return testResult();
                              },
                            ),
                          );

                    },
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 3,
                          // MediaQuery.of(context).size.height /1,
                          // width: double.infinity,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // borderRadius: BorderRadius.circular(100),
                          //  color: mButtonColor,
                  
                            //    image: DecorationImage(image:AssetImage('assets/images/lab/laboratory(1).png'))
                          ),
                          child: CircleAvatar(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/pharm/prescription.png'),
                              //  color: mBackgroundColor,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Drugs prescriptons",
                          style: TextStyle(color: mTitleTextColor),
                        ),
                      ],
                    ),
                  ),
                 
                ],
              ),
            ],
          ),
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
