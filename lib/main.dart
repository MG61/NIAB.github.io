import 'package:flutter/material.dart';
import 'package:portfolio_niab/constants/colors.dart';
import 'package:portfolio_niab/pages/home_page.dart';

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
        title: 'NIAB_portfolio',
        theme: ThemeData.dark(),
        color: CustomColor.backgroundDark,
        home: const HomePage(),
    );
  }
}