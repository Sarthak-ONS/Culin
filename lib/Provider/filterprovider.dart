import 'package:flutter/cupertino.dart';

import '../private_variable.dart';

class FilterProvider extends ChangeNotifier {
  Map<String, String> parameters = {
    'apiKey': apiKey,
  };

  addFilterToMap() {
    parameters.putIfAbsent("minCarbs", () => "100");
    notifyListeners();
  }

  removeFilterFromMap() {
    parameters.remove("minCarbs");
  }
}
