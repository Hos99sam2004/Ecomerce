import 'package:ecomerce/SplashScreen.dart';
import 'package:ecomerce/core/routes/app_routes.dart';
import 'package:ecomerce/core/routes/on_generate_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
/////  "email": "john@example.com",
///  "password": "password"
///"token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImVtYWlsIjoiam9obkBleGFtcGxlLmNvbSIsImlhdCI6MTc2MTI1MjUzMiwiZXhwIjoxNzYxMzM4OTMyfQ.mb34KB7-7_v32Ao9-eHlb9KsoH4T3THKGeKcdkZ6zy4",
  
  class MyApp extends StatelessWidget {
    const MyApp({super.key});
  
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
           initialRoute: AppRoutes.splash,
          onGenerateRoute: onGenerateRoute,
        home: Splashscreen(),
      );
    }
  }