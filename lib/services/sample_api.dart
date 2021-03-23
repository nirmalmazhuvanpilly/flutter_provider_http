import 'dart:convert';
import 'package:flutter_provider_1/models/sample_model.dart';
import 'package:http/http.dart' as http;

class SampleApi {
  Future<SampleModel> fetchEmployes() async {
    http.Response response;
    var body;
    response = await http
        .get("https://run.mocky.io/v3/ffc3b9a9-7094-441f-b74e-e130f20a7846");
    if (response.statusCode == 200) {
      print("Success");
      body = json.decode(response.body);
      print(body.runtimeType);

      return SampleModel.fromJson(body);
    } else {
      print("failed");
      return SampleModel();
    }
  }
}
