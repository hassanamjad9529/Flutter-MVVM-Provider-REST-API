import 'package:flutter/material.dart';
import 'package:testt/configs/routes/slide_transition_page.dart';
import 'package:testt/features/home/view/home_view.dart';
import 'package:testt/features/login/view/login_view.dart';
import 'package:testt/features/splash/splash_view.dart';
import 'routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return SlideTransitionPage(page: SplashView());
      case RoutesName.login:
        return SlideTransitionPage(page: LoginView());
      case RoutesName.home:
        return SlideTransitionPage(page: HomeView());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
