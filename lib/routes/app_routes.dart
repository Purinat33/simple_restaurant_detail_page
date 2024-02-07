import 'package:flutter/material.dart';
import 'package:kitiphum_s_application4/presentation/penar_detail_screen/penar_detail_screen.dart';

class AppRoutes {
  static const String penarDetailScreen = '/penar_detail_screen';

  static Map<String, WidgetBuilder> routes = {
    penarDetailScreen: (context) => PenarDetailScreen()
  };
}
