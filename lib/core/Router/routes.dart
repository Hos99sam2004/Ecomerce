import 'package:ecomerce/Features/Auth/login.dart';
import 'package:ecomerce/Features/SplashScreen/SplashScreen.dart';
import 'package:ecomerce/Features/onbording/Onbording.dart';
import 'package:ecomerce/core/Router/app_routes.dart';
// import 'package:ecomerce/core/services/prefs.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => Splashscreen(),
      ),
      GoRoute(
        path: AppRoutes.onbording,
        builder: (context, state) => Onbording(),
      ),
      GoRoute(path: AppRoutes.login, builder: (context, state) => Login()),
    ],
    
  );
}
