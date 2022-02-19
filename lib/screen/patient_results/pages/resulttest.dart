import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/reserve/widget/my_appbar.dart';
import 'package:flutter_medical/screen/reserve/widget/user_info.dart';
import 'package:flutter_medical/widget/my_header.dart';

class testResult extends StatefulWidget {
  const testResult({Key key}) : super(key: key);

  @override
  State<testResult> createState() => _testResultState();
}

class _testResultState extends State<testResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: MyHeader(
          height: 350,
          imageUrl: 'assets/images/avatar_head.png',
          child: Column(
            children: <Widget>[
              MyAppbar(),
              SizedBox(
                height: 16,
              ),
              UserInfo("Ahmed", "p0005"),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(350.0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Results ",
                style: TextStyle(color: mTitleTextColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),

              // Image.network(src)
              child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration:
                      BoxDecoration(border: Border.all(color: mTitleTextColor)),
                  child: Image.network(
                      "https://www.researchgate.net/profile/Mohammad-Zibaei/publication/314207691/figure/tbl1/AS:667647251329035@1536190917271/The-patients-laboratory-test-results.png")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),

              // Image.network(src)
              child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(border: Border.all(color: mTitleTextColor)),
                  child: Image.network(
                      "https://www.researchgate.net/profile/Mohammad-Zibaei/publication/314207691/figure/tbl1/AS:667647251329035@1536190917271/The-patients-laboratory-test-results.png")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),

              // Image.network(src)
              child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(border: Border.all(color: mTitleTextColor)),
                  child: Image.network(
                      "https://www.researchgate.net/profile/Mohammad-Zibaei/publication/314207691/figure/tbl1/AS:667647251329035@1536190917271/The-patients-laboratory-test-results.png",fit: BoxFit.scaleDown,)),
            ),
          ],
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
      elevation: 4,
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
