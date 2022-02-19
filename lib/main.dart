import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/forget_pass/reset_password.dart';
import 'package:flutter_medical/screen/main_login/main_login.dart';
import 'package:flutter_medical/screen/patient_medical/pages/Medical_info.dart';
import 'package:flutter_medical/screen/patient_prescription/pages/druggyTest.dart';
import 'package:flutter_medical/screen/patient_profile/pages/HomePatient.dart';
import 'package:flutter_medical/screen/patient_results/pages/resulttest.dart';
import 'package:flutter_medical/screen/reserve/reserve_screen.dart';
import 'package:flutter_medical/screen/startup/startup_screen.dart';

import 'screen/patient_deals/pages/dealpatient.dart';
import 'screen/patient_prescription/pages/DrugPatient.dart';
import 'screen/patient_profile/pages/homePatient_api.dart';
import 'screen/patient_visits/pages/VisitPatient.dart';
import 'screen/patient_visits/pages/visitPatienttest.dart';
import 'screen/signup/signup.dart';
import 'screen/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: mBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:WelcomeScreen(),
      //PatientDeals(),
      //DrugPAtient(),
    );
  }
}
