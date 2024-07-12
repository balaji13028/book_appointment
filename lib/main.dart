import 'package:book_appointment/pages/Homepage.dart';
import 'package:book_appointment/utils/app_colors.dart';
import 'package:flutter/material.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.purpleColor),
          useMaterial3: true,
          fontFamily: 'Poppins',
          textTheme: const TextTheme()),
      home: const Homepage(),
    );
  }
}
