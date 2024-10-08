import 'package:equapp/apis/helper.dart';

class LoginController {
  LoginController();

  Future checklogin() async {
    var body = {"{'EMPID':'90016134','PWD':'1','deviceName':'FF90016134'}"};
    var allData;
    await callApi(
            method: ApiMethod.post, endPoint: "CheckUserLoginNew", body: body)
        .then((onValue) {
      print("onValuess $onValue");
      allData = onValue;
      return onValue;
    });
    return allData;
  }
}
