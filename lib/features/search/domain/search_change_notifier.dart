import 'package:chilly_mobile_client/features/search/domain/search_settings.dart';
import 'package:flutter/material.dart';

abstract class SearchChangeNotifier extends ChangeNotifier {
  void setOnlyActive(bool value);

  void setInRange(bool value);

  void setAreaLimits(
    double minLat,
    double maxLat,
    double minLong,
    double maxLong,
  );

  SearchSettings get settings;

  void reset();
}

class SearchChangeNotifierImplementation extends SearchChangeNotifier {
  SearchSettings _settings = const SearchSettings();

  @override
  void reset() {
    _settings = const SearchSettings();
  }

  @override
  void setAreaLimits(
    double minLat,
    double maxLat,
    double minLong,
    double maxLong,
  ) {
    _settings = _settings.copyWith(
      minLatitude: minLat,
      maxLatitude: maxLat,
      minLongitude: minLong,
      maxLongitude: maxLong,
    );
    notifyListeners();
  }

  @override
  SearchSettings get settings => _settings;

  @override
  void setInRange(bool value) {
    _settings = _settings.copyWith(inRange: value);
    notifyListeners();
  }

  @override
  void setOnlyActive(bool value) {
    _settings = _settings.copyWith(onlyActive: value);
    notifyListeners();
  }
}
