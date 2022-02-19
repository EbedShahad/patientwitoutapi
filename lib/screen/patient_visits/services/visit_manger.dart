import 'dart:convert';
import 'package:flutter_medical/screen/patient_profile/models/newsInfo.dart';
import 'package:flutter_medical/screen/patient_visits/models/visitsInfo.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class Visit_Manager {
  String token;
  String fileNumber = "P0043";
  @override
/*  void initState() {
    print("Pass Api");
    //  token= createPasswordToken();
  }*/

  Future<PatientVisit> getNews() async {
   // vtp.Client();ar client = ht
    var _patientModel;
    //  final shared = sharingData();
    // var token = await shared.getinitToken();

    try {
      var queryParameters = {
        'patient_id':'11',
      };
      var uri = Uri.https(
          'www.waaasil.com', '/care/api/patient-visits/', queryParameters);
      var response = await http.get(uri, headers: {
        'Accept': 'application/json',
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI1IiwianRpIjoiNzNkOGE0ZjMwYzdjYzY0OTNkNDk2ZGFiOTNhODFhOTRhZTYzZjJkN2MxY2JjNDE0NDAyYTM4MTNjYzZjM2NlOWU2ZTM1NWQwNDdhMjQxODMiLCJpYXQiOjE2NDUwOTA1OTUuNTQ2MzgwOTk2NzA0MTAxNTYyNSwibmJmIjoxNjQ1MDkwNTk1LjU0NjM4MjkwNDA1MjczNDM3NSwiZXhwIjoxNjQ1MDk0MTk1LjU0MDI3ODkxMTU5MDU3NjE3MTg3NSwic3ViIjoiMjIiLCJzY29wZXMiOltdfQ.qx94ITsQy0w9Maxo1wTFXs50QGvFoH0GwZ4SXPBcK-fIQVaw0HzzanMaOakIC7aM3OxXfuF-z367zM0QXlCCwD3RRRJ7jDZfEXPZJLzmVtS1DQRoRC73UUzGrL5ZzRqqGVkOIW1PIDXBxDrtnJeurR4N-T2B0sxALoroOBPhoEHhnyjWwFS6J9e8BkR7jqe141kOLPuCD_Y1Bnk9IUy4eD0nOBbg0EwvSoU8qRrOhYPLuCHHRtlUqDMx6qPzzPM37ZQru89MUmDSwSldkFrPmzeOBWd-3MuqcrNhnNAAe74GBOizYPFtOtAq0bTyKsUKS0e_lidIU07Qj3Ney9bdl0WQ9PzzKipYIqrGAsuh2QDjjAtN1khGIWbi20EvduYZ8cgubCt_sTH2b_4gMry1RZDrjxpIKaSeAmxTTmWIqCuUJWQ05_nVEsBLXdfTDT5o9nBpdPTjuj2LNHtM7-GcztqW35e0Oe6CdNMk8SE5L94bll9YWUPZ2iqFcj4LS-ifsGLY_zF2-mpSREb_kJdT8NxIhNFG_GwijyoodsOUoheyerrOP16JtkrzG6or6HynYRmM0JtsmDO7tGcAFGwyngUML2DwH9ut0uR1I76HxoVNMbvLZa0X9lKOJvYlEEel-csdLn_IfnL6gQN_E0aGNI9_-jWrbUBqRaiIK-8o1Ck',
      });

      print(response.headers);
      print(response.statusCode);
      print(response.reasonPhrase);

      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        _patientModel =ProfilePatient.fromJson(jsonMap);
      }
    } catch (Exception) {
      return _patientModel;
    }

    return _patientModel;
  }
}
