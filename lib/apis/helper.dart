import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:equapp/services/check-internet.dart';
import 'package:equapp/shared/settings.dart' as settings;
import 'package:equapp/services/services.dart' as service;

enum ApiMethod {
  get,
  post,
}

enum WithBaseURL {
  yes,
  no,
}

enum ShowConnectionPage {
  yes,
  no,
}

Future callApi(
    {endPoint,
    body,
    required method,
    withBaseURL = WithBaseURL.yes,
    showConnectionPage = ShowConnectionPage.yes}) async {
  var responseJson;
  var response;
  var bodyApi = body;
  service.setHeader(bodyApi.toString());
  await checkInternet(showConnectionPage).then((value) async {
    if (true) {
      try {
        response = method == ApiMethod.get
            ? await http.get(
                Uri.parse(withBaseURL == WithBaseURL.yes
                    ? '${settings.baseURL}$endPoint' //jopotrol.com/apis/login ==> baseurl (jopotrol.com/apis/), ==> endpoint (login)
                    : '$endPoint'), //efwateerkom.com/login
                headers: settings.headers,
              )
            : await http.post(
                Uri.parse(withBaseURL == WithBaseURL.yes
                    ? '${settings.baseURL}$endPoint'
                    : '$endPoint'),
                body: jsonEncode(bodyApi), //{'key':'value'}
                headers: settings.headers,
              );
        print(response.body);
        responseJson = json.decode(response.body);

        /*    Map resp = {
          "data": {},
          "status": 200,
          "msg": "Done!",
        };
        if (resp['data'] != {}) {
          return resp['data'];
        } else {
          return resp['msg'];
        } */
      } catch (e) {
        print("Url is :" + endPoint.toString());
        print("exception handld is :" + e.toString());
      }
    } else {}
  });

  Map data = {'data': responseJson, 'res': response};
  return data;
}
