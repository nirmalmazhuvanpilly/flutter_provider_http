import 'package:flutter/cupertino.dart';
import 'package:flutter_provider_1/models/sample_model.dart';
import 'package:flutter_provider_1/services/sample_api.dart';

class SampleProvider with ChangeNotifier {
  SampleModel _sampleModel = SampleModel();
  SampleApi _sampleApi = SampleApi();

  SampleModel get sampleModel => _sampleModel;

  set sampleModel(SampleModel sampleModel) {
    _sampleModel = sampleModel;
    notifyListeners();
  }

  var initialValue = 0;
  void add() {
    initialValue++;
    notifyListeners();
  }

  void diff() {
    initialValue--;
    notifyListeners();
  }

  Future<void> fetchEmployes() async {
    sampleModel = await _sampleApi.fetchEmployes();
  }
}
