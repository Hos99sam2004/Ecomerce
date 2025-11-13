import 'dart:async';

import 'package:ecomerce/core/Router/app_routes.dart' show AppRoutes;
import 'package:ecomerce/core/services/prefs.dart';
// import 'package:ecomerce/core/routes/app_routes.dart';
import 'package:ecomerce/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    checkOnboarding();
    super.initState();
  }

  Future<void> checkOnboarding() async {
    bool showOnboarding = await Prefs.getBool("showOnbording");
    print("showOnboarding $showOnboarding");
    if (showOnboarding == false) {
      context.go(AppRoutes.onbording);
    } else {
      context.go(AppRoutes.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(AppAssets.logo, width: 0.5.sw)),
    );
  }
}
