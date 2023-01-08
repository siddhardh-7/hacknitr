import 'package:carbon/screens/carbon_emission.dart';
import 'package:carbon/screens/food_carbon_emission.dart';
import 'package:carbon/screens/home_carbon_emission.dart';
import 'package:carbon/screens/news.dart';
import 'package:carbon/screens/results.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carbon/utilities/colors.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        NewsScreen.id: (context) => const NewsScreen(),
        CarbonEmission.id: (context) => const CarbonEmission(),
        HomeEmission.id: (context) => HomeEmission(
              carbonEmissionByTravel: 0,
            ),
        FoodEmission.id: (context) => FoodEmission(
              carbonEmissionByTravel: 0,
              carbonEmissionByHouse: 0,
            ),
        Results.id: (context) => Results(
              carbonEmissionByHouse: 0,
              carbonEmissionByTravel: 0,
              carbonEmissionByFood: 0,
            ),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: AppColors.primaryColor,
        ),
        primaryColor: AppColors.primaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
