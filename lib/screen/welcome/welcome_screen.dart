import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/patient_deals/pages/dealpatient.dart';
import 'package:flutter_medical/screen/patient_profile/pages/HomePatient.dart';
import 'package:flutter_medical/screen/patient_visits/pages/VisitPatient.dart';
import 'package:flutter_medical/screen/reserve/reserve_screen.dart';
import 'package:flutter_medical/widget/header_logo.dart';
import 'package:flutter_medical/widget/menu_card.dart';
import 'package:flutter_medical/widget/my_header.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          MyHeader(
            height: //333,
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? MediaQuery.of(context).size.height / 2.55
                    : MediaQuery.of(context).size.height / 1,
            imageUrl: 'assets/images/welcome.png',
            child: Column(
              children: <Widget>[
                HeaderLogo(),
                Text(
                  'Mediacl Record',
                  style: TextStyle(
                    fontSize: 28,
                    color: mTitleTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'for each patient ,\n we have  a special Care ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Spacer(), 
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [mBackgroundColor, mSecondBackgroundColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Our Medical\nRecrod',
                          style: TextStyle(
                            color: mTitleTextColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.menu,
                          color: mSecondBackgroundColor,
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MenuCard(
                        imageUrl: 'assets/images/general_practice.png',
                        title: 'Patient Profile',
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePatient();
                              },
                            ),
                          );
                        },
                      ),
                      MenuCard(
                        imageUrl: 'assets/images/specialist.png',
                        title: 'CMS',
                        press:  () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return PatientDeals();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MenuCard(
                        imageUrl: 'assets/images/sexual_health.png',
                        title: 'Medical Information',
                        press:  () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ReserveScreen();
                              },
                            ),
                          );
                        },
                      ),
                      MenuCard(
                        imageUrl: 'assets/images/immunisation.png',
                        title: 'Lab',
                        press:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return PatientVisits();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
