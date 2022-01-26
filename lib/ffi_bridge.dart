import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';

typedef TemperatureFunction = Double Function();
typedef TemperatureFunctionDart = double Function();
// TODO: Add new typedef declarations here

// TODO: Add ThreeDayForecast here

class FFIBridge {
  late TemperatureFunctionDart _getTemperature;
  // TODO: Add _getForecast declaration here
  // TODO: Add _getThreeDayForecast here

  FFIBridge() {
    // 1
    final dl = Platform.isAndroid
        ? DynamicLibrary.open('libweather.so')
        : DynamicLibrary.process();

    _getTemperature = dl
        // 2
        .lookupFunction<
            // 3
            TemperatureFunction,
            // 4
            TemperatureFunctionDart>('get_temperature');

    // TODO: Assign value to _getForecast

    // TODO: Assign value to _getThreeDayForecast here
  }

  // 5
  double getTemperature() => _getTemperature();

  // TODO: Add getForecast() here

  // TODO: Add getThreeDayForecast() here
}
