import 'package:flutter/material.dart';
import 'package:flutter_widgets/ui/routes/app_routes.dart';
import 'package:flutter_widgets/utils/theme/app_themes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.home,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      theme: AppThemes.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
