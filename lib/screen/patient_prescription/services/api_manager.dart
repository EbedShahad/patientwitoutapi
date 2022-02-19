import 'dart:convert';
import 'package:flutter_medical/screen/patient_prescription/models/newsInfo.dart';
import 'package:flutter_medical/screen/patient_profile/models/newsInfo.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class Drug_Manager {
  String token;
  String fileNumber = "P0043";
  @override
/*  void initState() {
    print("Pass Api");
    //  token= createPasswordToken();
  }*/

  Future<DrugsToPatient> getNews() async {
   // vtp.Client();ar client = ht
    var _patientModel;
    //  final shared = sharingData();
    // var token = await shared.getinitToken();

    try {
      var queryParameters = {
        'patient_id':'11',
      };
      var uri = Uri.https(
          'www.waaasil.com', '/care/api/patient-prescriptions', queryParameters);
      var response = await http.get(uri, headers: {
        'Accept': 'application/json',
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI1IiwianRpIjoiN2U3YzIxZTA5MGQyZTRmOTBjMWJlN2RiYTE0ZTk5YTFmMmJhM2FmMzVkNjY1NWRlZGYwNDE5ODUzNDY2NzExNzM0MWQ3OThjMTJlYmI1OTciLCJpYXQiOjE2NDUyMDQxMDUuNDk3MDMzMTE5MjAxNjYwMTU2MjUsIm5iZiI6MTY0NTIwNDEwNS40OTcwMzQwNzI4NzU5NzY1NjI1LCJleHAiOjE2NDUyMDc3MDUuNDkwMTM5MDA3NTY4MzU5Mzc1LCJzdWIiOiIyMiIsInNjb3BlcyI6W119.TUmvw2VwOooT-RdfrtOK_4S87rZwmNBkDbWey8b6oRV6V1D2aCTpf9oI_h0_Y0NgC4G1GbnpDxp-0YflSrsO4rYlxlnpOhVdbsxmR6-HPnvAOBsBXQXyBG9Ij9NpBZxy76B2U-5iydOxvRsVJr7D3moY8ZQqMxd17U6BSKQ-Us5T5EbymLvPk0nahRkbrhaFMKxgQymibFHtgjVLca8F95KrHNgEELaV55AA0V4ZiT_pDOPOURA6HeleX1RioIr8dUYFVHWtrNyQP7Azxqg1y2NRoFU5BOP3HOd3vYTrVpdZvYaKIliFzuHngbkkKryj0jBrlIPx7FI8NkOCQF8WLyzBqlJBLCzT9KEpY9W4CQM8Y6LtOlOjTU8_8h5xxuN_t5y8xjFRIjnYIgNqCKU-sL6CMsJQ2QiAaO_CjuGOv2DikE0ldq545gGj6gLU_jReRbRExcOlDRyyr987yLoDMKjTtmUdK1Ykdu3Syrt39cHkjpv8r_xuWxBX900ogcC2LOP_VmoGPVyknPnpyUYy3suKWfVC04Y0sHpKY93R2J5x8ZCmc4BgZd9dNBB9qdyr_X7xzSFjJQ656xnU2DUmnKsOETMs_8ZoDPOMAIbA7-XyLDGRvwjrcUgN4xBXFpXoy3KtQzhTMsBT2at_U9qB0DknWa5nCA82z03Y6v6DEEk',
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
