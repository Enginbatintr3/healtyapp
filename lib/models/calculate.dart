import 'package:flutter_application_6/data/userdata.dart';

class Calculate {
  final UserData _userData;

  Calculate(this._userData);

  double calculate() {
    double result;

    result = 65 + _userData.spor - _userData.smoke;
    result = result + (_userData.height / _userData.weight);

    if (_userData.selected == "KADIN") {
      return result + 3;
    } else {
      return result;
    }
  }
}
