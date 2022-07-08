import 'package:app/bike/bike.dart';
import 'package:flutter/foundation.dart';

class BikePowerState extends ChangeNotifier {
  SpeedLimit _speedLimit = SpeedLimit.eu;
  SpeedLimit get speedLimit => _speedLimit;
  set speedLimit(SpeedLimit value) {
    _speedLimit = value;
    notifyListeners();
  }

  PowerLevel _powerLevel = PowerLevel.fourth;
  PowerLevel get powerLevel => _powerLevel;
  set powerLevel(PowerLevel value) {
    _powerLevel = value;
    notifyListeners();
  }
}

class BikeLockState extends ChangeNotifier {
  bool _locked = false;
  bool get locked => _locked;
  set locked(bool value) {
    _locked = value;
    notifyListeners();
  }
}

class BikeBatteryState extends ChangeNotifier {
  int _batteryPercentage = 100;
  int get batteryPercentage => _batteryPercentage;
  set batteryPercentage(int value) {
    if (value > 100) value = 100;
    _batteryPercentage = value;
    notifyListeners();
  }

  bool _charging = false;
  bool get charging => _charging;
  set charging(bool value) {
    _charging = value;
    notifyListeners();
  }
}