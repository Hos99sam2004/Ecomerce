// import 'package:ecomerce/Payment/Pay_mob_notquick.dart';
import 'package:ecomerce/core/Router/routes.dart';
import 'package:ecomerce/core/services/prefs.dart';
// import 'package:ecomerce/Payment/paymob_links.dart';
// import 'package:ecomerce/core/Router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
 await Prefs.init();

    print ("ShowOnbording ${Prefs.getBool("showOnbording")}");
 

  runApp(const MyApp());
}
/////  "email": "john@example.com",
///  "password": "password"
///"token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImVtYWlsIjoiam9obkBleGFtcGxlLmNvbSIsImlhdCI6MTc2MTI1MjUzMiwiZXhwIjoxNzYxMzM4OTMyfQ.mb34KB7-7_v32Ao9-eHlb9KsoH4T3THKGeKcdkZ6zy4",

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: PayMobNotquick(),
    // );
    return ScreenUtilInit(
      designSize: const Size(
        375,
        812,
      ), // your UI design size (e.g. Figma iPhone X)
      minTextAdapt: true, // adapt text to device settings
      splitScreenMode: true, // support foldables / split screen
      builder: (context, child) {
       
        return MaterialApp.router(
          routerConfig: Routes.router,
            debugShowCheckedModeBanner: false,);
      },
    );
  }
}
