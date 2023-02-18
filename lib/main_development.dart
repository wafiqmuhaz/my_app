// ignore_for_file: unused_import, always_use_package_imports, depend_on_referenced_packages

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:my_app/bootstrap.dart';

import 'app/app.dart';
import 'portfolio/provider/theme.dart';
import 'portfolio/routes/routes.dart';

void configureApp() {
  setUrlStrategy(PathUrlStrategy());
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureApp();
  // bootstrap(() => const App());
  WidgetsBinding.instance.addPostFrameCallback((_) {
    configureApp();
  });
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return App();
        // ThemeProvider(
        //   initTheme: ref.watch(themeProvider).isDarkMode
        //       ? MyThemes.darkTheme
        //       : MyThemes.lightTheme,
        //   child: MaterialApp(
        //     title: 'Wafiq Muhaz',
        //     debugShowCheckedModeBanner: false,
        //     themeMode: ref.watch(themeProvider).themeMode,
        //     theme: MyThemes.lightTheme,
        //     darkTheme: MyThemes.darkTheme,
        //     initialRoute: Routes.initial,
        //     onGenerateRoute: RouterGenerator.generateRoute,
        //   ),
        // );
      },
    );
  }
}
