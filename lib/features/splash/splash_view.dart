import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../services/splash/splash_services.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    SplashServices splashServices = SplashServices();
    splashServices.checkAuthentication(context);
    return Scaffold(
      body: Center(
        child: SvgPicture.asset('assets/svg/splash_icon.svg'),
      ),
    );
  }
}
