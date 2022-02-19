import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/welcome/welcome_screen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_medical/screen/forget_pass/forget_pass.dart';
import 'package:flutter_medical/widget/input_decor.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainLogin extends StatefulWidget {
  @override
  _MainLoginState createState() => _MainLoginState();
}

class _MainLoginState extends State<MainLogin> {
  @override
  void initState() {
    super.initState();
  }

  bool loading = false;
  final forKey = GlobalKey<FormState>();
  String erorText1, errorText2;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  Map<dynamic, dynamic> userExit = {'message': 'User does not exist'};
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: loading,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcome.png'),
                fit: BoxFit.fill,
              ),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [mBackgroundColor, mSecondBackgroundColor],
              )),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF2C3343),
                            spreadRadius: 2,
                            blurRadius: 20),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(400),
                          bottomLeft: Radius.circular(400))),
                  height: MediaQuery.of(context).size.height / 1.12,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 130),
                          child: Text("LOGIN",
                              style: TextStyle(
                                fontSize: 50,
                                color: mTitleTextColor,
                              )),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                              ),
                              child: Form(
                                key: forKey,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        cursorColor: mTitleTextColor,
                                        controller: emailController,
                                        validator: (value) {
                                          value = erorText1;
                                          if (value.isEmpty || value == null)
                                            erorText1 = 'Required';
                                          else
                                            erorText1 = "";
                                          return erorText1;
                                        },
                                        decoration: buildInputDecoration(
                                            Icons.person, 'Enter Email '),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        cursorColor: mTitleTextColor,
                                        obscureText: true,
                                        controller: passwordController,
                                        validator: (value) =>
                                            value.isEmpty || value == null
                                                ? 'Required'
                                                : null,
                                        decoration: buildInputDecoration(
                                            Icons.security, 'Enter Passowrd'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ForgetPassword()));
                                          },
                                          child: Container(
                                            child: Text(
                                              'Forget your password ?',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: mTitleTextColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: MaterialButton(
                                          shape: Border.all(
                                            style: BorderStyle.solid,
                                            width: 2.0,
                                            color: mButtonColor,
                                          ),
                                          color: mButtonColor,
                                          child: Text(
                                            'Log In ',
                                            style: TextStyle(
                                              color: mBackgroundColor,
                                            ),
                                          ),
                                          onPressed: () async {
                                            // print(token);
                                            //  NewUser("AAA","aaaa",token);
                                            loginApi(emailController.text,
                                                passwordController.text);

                                            if (forKey.currentState
                                                .validate()) {
                                              //  print("validate");
                                              setState(() {
                                                loading = true;
                                              });
                                            }
                                            //  try {
                                            //  register login = register();

                                            //  loginApi(
                                            //   emailController.text,
                                            //   passwordController.text,
                                            // );

                                            //sha      print("data dta tat : ");
                                            //sha   print(data.data);
                                            //  intAsJson.text = json.encode(data);
                                            //sha  if (data.data == data)
                                            /*data !=
                                                      'Incorrect Credentials' ||
                                                  data != "User does not exist"*/ //{
                                            //sha  SharedPreferences prefs =
                                            //sha      await SharedPreferences
                                            //sah         .getInstance();
                                            //sha    prefs.setInt('userId', data);
                                            //sha        print("hello ");
                                            //sha            Navigator.pushReplacement(
                                            //sha             context,
                                            //sha         MaterialPageRoute(
//sha builder: (context) =>
                                            //sha          OTP_Page()));
                                            //sha          } else {
                                            //sha        print("hello  elseR");
                                            //sha       setState(() {
                                            //sha       loading = false;
                                            /*     final snackBar = SnackBar(
                                                      content: Text(
                                                          'wrong password or Email'));
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(snackBar);
                                                });
                                              }
                                            } catch (e) {
                                              print(e);
                                            }*/
                                          }),
                                    ),
                                    /*   Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignUp()));
                                          },
                                          child: Container(
                                            child: Text(
                                              'Creat New Account?',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: Color(0xFF252B39),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),*/
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                // must delete it
                //       InkWell(onTap: (){
                //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //   content: Text("jsonba[error]"),
                //   backgroundColor: Colors.teal,
                // ));
                //       },
                //         child: Text("kjjjjjjjjjjj",)),
              ],
            ),
          ),
        ),
      ),
    );
  }
  //  IsUserExist(){

  //  }
  saveIn(String token) {}
  loginApi(email, pass) async {
    print("banan test ");
    var headers = {'Accept': 'application/json', 'Authorization': 'Bearer'};
    var request = await http
        .post(Uri.parse("https://waaasil.com/care/api/user-login"), headers: {
      'Accept': 'application/json',
      'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI1IiwianRpIjoiNjE3MmY4ZjkxMmQyYzlmYjg5NjQxMzVhNjg2YTRjYjFiYzFlYTYyNzljY2FiNmFiNDAzMzlkNzJlZWZhNzE5ZGMzYzEzNjNiYzIzZGJlZWYiLCJpYXQiOjE2NDUwMDE4MzcuMTc2NTM5ODk3OTE4NzAxMTcxODc1LCJuYmYiOjE2NDUwMDE4MzcuMTc2NTQ4OTU3ODI0NzA3MDMxMjUsImV4cCI6MTY0NTAwNTQzNy4xNjEyMTAwNjAxMTk2Mjg5MDYyNSwic3ViIjoiMjIiLCJzY29wZXMiOltdfQ.QrylQ3UnbksmjxYbO75G7oRbpdeHjVSk0DJzw00PKYUceMJdpoGV9MwqHhYK6gbU4A8Yn7mHj1Andz3eP5Q3-LoFfNMVkA04qK11PXGKy-xpceShekYiJPjRTS8_y8qPQHDTyAe28zQOppUGNW5_A0IAod9Io5QkgviJvcVpzdFpvFPD-EgX7NHMs-uFfBCDItbO9vMrVtpGLyUF9pn0eQ7pFK6WSmNRV07SccDSK5BTRwWkrQBxU7Gc7VAXGlQ6aAdnIALBzz5J48P7pis3aw29pYCK56Rpa_U4tyDvdhcKreNkkXeX_Pos3O5Pf8cblApSrFdhEx7ohGb8BtApiHvZy6quVO8eM6AwooaX5kSuykOEX07CjJUKzOuqMq-y1tI7v7KFs6cjMbaVwrbpFF_PY2iX48Mk2_94RxmRbMskhLfboqkleMXkQVLTdeF7Yq7YVIkrCBElVFEbfucyHcSJY-RzLftQs6o2mWNWVxvP2ui-CCLYIhCbpQWvLexQs8TK_h6z7dYWbHsASCz-7mc3cyscOJ2U4Ga0o2ne070XNGyg1ILudf9VZdkXHb1GwSbLwGGUJAi6SalEa68wIP6ZUyQmScPezXeZVkScCR7m9MoHvUyYuzowl7WnQSVa_ThYvPjepnKMHPnWlbCCA13OVyC8AF2wzQqTQGzTmxw'
    }, body: {
      'username':email,
      'password':pass,
      'user_type':'2'
    });
    print(request.statusCode);
    if (request.statusCode == 200) {
      // print(request.body);
      var jsonrequest = await json.decode(request.body);
      switch (jsonrequest["code"]) {
        case 200:
          print("patient found");
          // var userid = jsonrequest["data"]["id"];
          // print(userid);
            Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return WelcomeScreen();}));
          break;
        case 500:
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(jsonrequest["error"]),
            backgroundColor: Colors.teal,
          ));
          print("user found la la la  shahad");
          break;
        default:
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "Call 212 to ask for help",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: mButtonColor,
          ));
      }
    } else {
      print(request.reasonPhrase);
    }
  }
////////////////////////////////////////

//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     print("hello  from sign in ");
//     print("login ya  ");
//     var request = await http
//         .post(Uri.parse("http://waaasil.com/care/api/userLogin"), headers: {
//       'Accept': 'application/json',
//       'Authorization': 'Bearer $token'
//     }, body: {
//       'username': email,
//       'password': pass,
//       'user_type': '1'
//     }
//             // {'username': email,'password': pass,'user_type': userLevel}
//             );

//     String jsonsDataString = request.body
//         .toString(); // toString of request's body is assigned to jsonDataString
//    // var _data = jsonDecode(jsonsDataString);
//     //print(_data.toString());
//     print("DATA123");
//     print(request.statusCode);
//     var jsonrequest = json.decode(request.body);
//     print(jsonrequest['code']);
//     if (request.statusCode == 200)
//     {
//       print(request.body);
//       if (jsonrequest['code'] == 200) {
//         print("jsonrequest != null");
//         print(jsonrequest);
//         print(jsonrequest['data']['userId']);
//         setState(() {
//           _isLoading = true;
//           print("hello   request.. data   ");
//           prefs.setString(
//               'userId', (jsonrequest['data']['userId']).toString());
//         });
//         // print(prefs.getString('userid'));
//         //sharedPreferences.setString("token", jsonrequest['token']);
//         Navigator.of(context).pushAndRemoveUntil(
//             MaterialPageRoute(builder: (BuildContext context) => OTP_Page()),
//             (Route<dynamic> route) => false);
//         print("the last  ");
//       } else {
//         // setState(() {
//         //   _isLoading = false;
//         // });
//         final snackBar = SnackBar(
//           content: Text(jsonrequest['error']),
//           backgroundColor: Colors.teal,
//         );
//         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//         Navigator.of(context).pushAndRemoveUntil(
//             MaterialPageRoute(builder: (BuildContext context) => MainLogin()),
//             (Route<dynamic> route) => false);
//       }

//     }
//     else if(request.statusCode ==401) {
//       print("This ,assage");
// print( jsonrequest['message']);
//     }
//   }
// }

  /*NewUser(String name, String password, String token) async
   {
    // token =shared.getinitToken().toString();
    // print("inside login login");
    // // token = await createToken();
    // print(await token);
    print("inside 111111111111111 api");

    Map data1 = {
      'username': 'doc1234@gmail.com',
      'password': 'doc@12345',
      'user_type': '1'
    };
    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    };
    print("test banan ");
    print(headers['Authorization']);
    var request = await http.post(
        Uri.parse("https://waaasil.com/care/api/user-login"),
        body: data1,
        headers: {
          'Accept':'application/json',
          'Authorization':'Bearer $token'
        });
    if (request.statusCode == 200) {
      print(request.body);
      var jsonrequest = await json.decode(request.body);
      switch (jsonrequest["code"]) {
        case 200:
          print("user found ya shahad");
          var userid=jsonrequest["data"]["id"];
         // jsonrequest["data"]["id"]
         // here we must text user status to check if he active or not 
          print(userid);
        break;
        case 500:
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(jsonrequest["error"]),
            backgroundColor: Colors.teal,
          ));
          print("user found la la la  shahad");
          break;
      }
    } else {
      print(request.reasonPhrase);
    }
    print("hello  from sign in  after share ");
  }
}
}
*/
}
