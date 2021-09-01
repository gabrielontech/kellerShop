import 'package:flutter/material.dart';
import 'package:kellershop/config/app_route.dart';
import 'package:kellershop/config/theme.dart';
import 'package:kellershop/views/views_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KellerShop',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerate,
      initialRoute: HomeScreen.routeName,
    );
  }
}
