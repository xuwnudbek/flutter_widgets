import 'package:flutter/material.dart';
import 'package:flutter_widgets/ui/pages/home/home_page.dart';

class AppRoutes {
  static const home = '/';
  static const widgets = '/widgets';

  static Map<String, WidgetBuilder> get routes => {
        AppRoutes.home: (context) => HomePage(),
        AppRoutes.widgets: (context) => Container(),
      };

  AppRoutes._();
}
