// Mapbox-ivi

import 'package:flutter/services.dart';


Map<String, dynamic> FactoryCurrentLocationArg() {
  final args = <String, dynamic>{};

  args["lat"] = 35.689487;
  args["lon"] = 139.691711;

  return args;
}
 
Future<bool> SetCurrentLocation() async {

  final _channel = new MethodChannel("com.mapbox/mapboxgl.qt");  

  return _channel.invokeMethod<bool>(
    "SetCurrentLocation", 
    FactoryCurrentLocationArg());
}

