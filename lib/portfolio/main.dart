// // ignore_for_file: depend_on_referenced_packages, always_use_package_imports, use_super_parameters, lines_longer_than_80_chars

// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';
// import './provider/theme.dart';
// import './routes/routes.dart';

// void configureApp() {
//   setUrlStrategy(PathUrlStrategy());
// }

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   // configureApp();
//   WidgetsBinding.instance.addPostFrameCallback((_) {
//     configureApp();
//   });

//   runApp(const ProviderScope(child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Consumer(
//       builder: (context, ref, _) {
//         return ThemeProvider(
//           initTheme: ref.watch(themeProvider).isDarkMode
//               ? MyThemes.darkTheme
//               : MyThemes.lightTheme,
//           child: MaterialApp(
//             title: 'Wafiq Muhaz',
//             debugShowCheckedModeBanner: false,
//             themeMode: ref.watch(themeProvider).themeMode,
//             theme: MyThemes.lightTheme,
//             darkTheme: MyThemes.darkTheme,
//             initialRoute: Routes.initial,
//             onGenerateRoute: RouterGenerator.generateRoute,
//           ),
//         );
//       },
//     );
//   }
// }
