import 'dart:convert';
import 'package:flutter_medical/screen/patient_results/models/resultInfo.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class Result_Manger {
  String token;
  String fileNumber = "P0043";
  @override
/*  void initState() {
    print("Pass Api");
    //  token= createPasswordToken();
  }*/

  Future<ResultPAtient> getNews() async {
   // vtp.Client();ar client = ht
    var _patientModel;
    //  final shared = sharingData();
    // var token = await shared.getinitToken();

    try {
      var queryParameters = {
        'file_number': fileNumber,
      };
      var uri = Uri.https(
          'www.waaasil.com', '/care/api/patient-info', queryParameters);
      var response = await http.get(uri, headers: {
        'Accept': 'application/json',
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI1IiwianRpIjoiZTU4MDk2YzA4MzE3ZDhkZjJhYmFlZmQ5MTczNmZiMWEwNGQ2OWJjY2Q3ZDMwMDYwN2JhYmEyYzA4MDkzZGVhOGZiNzI3ZjEwNDQyYjRmOWIiLCJpYXQiOjE2NDUwNDUyMzcuNjU1MzgxOTE3OTUzNDkxMjEwOTM3NSwibmJmIjoxNjQ1MDQ1MjM3LjY1NTM4NDA2MzcyMDcwMzEyNSwiZXhwIjoxNjQ1MDQ4ODM3LjY0MjI5Mjk3NjM3OTM5NDUzMTI1LCJzdWIiOiIyMiIsInNjb3BlcyI6W119.nf8Z77ad8LJMSXP4qgoyjc2UwbiJM6o9hgDbdwqchQRCnB-xIcISj6Pk2AiygDzt2ZY0NcumQuog8H2HVJrJAouifSy9o7ntPhrIe0QNTMR6FDVroL8axxAQ0Pco10VylCBVbgQkXvBAMJO-lT4Msgo57f6ArtjYtW5IVGtPutLZXVQ7Viua7H4qdc0Jj-cUJpGVh7I2b6sehjh2je1wHzue5gvcBUN-nGLRrMO-DrYATXBx4MgMCmmRg8omiW2VAiUygU8WZZ6qjp0N5nafx5kDrlzJW8DFNxee9OvKG3Sbnn0etAz6GXSGlf1UROcXs-uYGlIz9LKvdPII44PyxDzwCf9Rc3mWLmAMXU6bXnlZU2TMvbJ0M7ElhaexwiTpC8mywxjKEqmXxj8Er-WMBMsZKK1_UzzeAzpGKUuoyd9F8nGFTVfNXQxlO9y8ioj9b14VeTNiSyev8PHEBPlL0yy_KlpzKOlBWjYiK1RoA5hXOshZqLSfvx3de6tk9YxokqcHshOTeJ0orDz82sim_8gGy-IkBngqCu8829BGMkOOV59bg6PTS_7VFrBARbvCfP7RK-mzrpcfLPg98jbYVVb9qCHKMqZ0JAbPa_eO012raGPtOj20gxw8oYg-1rr-1Yibcd_IOdz1ZgawKjbPjtrKmqSEPj3Nrm_3dlnqNbk',
      });

      print(response.headers);
      print(response.statusCode);
      print(response.reasonPhrase);

      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        _patientModel =ResultPAtient.fromJson(jsonMap);
      }
    } catch (Exception) {
      return _patientModel;
    }

    return _patientModel;
  }
}
