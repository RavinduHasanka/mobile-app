import 'package:flutter/material.dart';
import 'package:shop_app/screens/loading/loading_screen.dart';

import 'routes.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iShop.lk',
      theme: AppTheme.lightTheme(context),
      initialRoute: LoadingScreen.routeName,
      routes: routes,
    );
  }
}
