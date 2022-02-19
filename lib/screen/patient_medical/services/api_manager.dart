import 'dart:convert';
import 'package:flutter_medical/screen/patient_medical/models/newsInfo.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class Medical_api {
  String token;
  String fileNumber = "P0043";
  @override
/*  void initState() {
    print("Pass Api");
    //  token= createPasswordToken();
  }*/

  Future<ProfilePatient> getNews() async {
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
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI1IiwianRpIjoiNmY4MzM0YTY4MmQzNmIzMWUzNTllZDE3Mjk2OGU5NjFkNWEyMjg1MzViOTQ1ZDg1MjM3OGY4MWNhMTEwMDJiZjk3YmU0MWY0NDIxZWU3OWYiLCJpYXQiOjE2NDUwNzU4MTEuMjcyODgxOTg0NzEwNjkzMzU5Mzc1LCJuYmYiOjE2NDUwNzU4MTEuMjcyODgzODkyMDU5MzI2MTcxODc1LCJleHAiOjE2NDUwNzk0MTEuMjYwMzkyOTA0MjgxNjE2MjEwOTM3NSwic3ViIjoiMjIiLCJzY29wZXMiOltdfQ.Qcinl4qckHZ3f_ZhIzP_cYpzOMa6ktQdsoFsbVz2-JRQViMoFc4erqQio9IGS_PwutrZfvfH9y1gTKaGDkYLPQ7zW_Y_u-GpLzsk1rysDV98KkzSIP0oS82UVyslgQXSZ8TAUonRQK6qlwq7qmCdoaQsb2aPx0R_Ul0wvb1A738Ae05NXqKizKmysMjV4XK68Q91hiLO_cNndLu0vt9c27GXlVZIAxcW7D4dlUxRfSK3BQ12YqQY4XWh6Nn5OhWMTTv_W0VReEwbH_ZO5AZlbxQWy1WJMwxkvX1fYBme04nDQr8LM3vAO2hNrOj0LBRdMKfFUNKFb7KpGzp2KoO-N6wB18_Q1zpDC40xZoZGktaeWCen81w8Q8pO34i9IGZ75luyNpTX3gvr98sJbtEwzLXmYd2JbmJFYu34vqs7fsPpDFlXZhzc3WedtyE3U-wj_MPZYoDRjR0sWik4Fp92XEA4XmjjjaW--S5fcJZ3a2A7orXLrjSYT1j05oW2zVKAM4cP9Hh_jqM7dgIE5SbaRTrsldWUKS0ZIaJSJy40FN3qEn3kyMDdDgLTeh1wdA2KhAFy6y0sfwp7vWjNOJwxjlEpgp-Tb9BFgtEhiaso7sCsGduX3zvK8Tw3R2hR8HIzy9GCcGg_sYnW88-5qJh1HWysiP52MNGmD1BNq6iIVQc',
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
