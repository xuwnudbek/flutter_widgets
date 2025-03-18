import 'package:flutter/material.dart';
import 'package:flutter_widgets/ui/providers/main_provider.dart';
import 'package:flutter_widgets/ui/routes/app_routes.dart';
import 'package:flutter_widgets/utils/theme/app_themes.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

void main() {
  GetStorage.init("storage");

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainProvider>(
      create: (context) => MainProvider(),
      builder: (context, snapshot) {
        return Consumer<MainProvider>(
          builder: (context, provider, _) {
            return MaterialApp(
              routes: AppRoutes.routes,
              initialRoute: AppRoutes.home,
              debugShowCheckedModeBanner: false,
              title: 'Flutter Widgets',
              theme: AppThemes.lightTheme,
              darkTheme: AppThemes.darkTheme,
              themeMode: provider.themeMode,
            );
          },
        );
      },
    );
  }
}
