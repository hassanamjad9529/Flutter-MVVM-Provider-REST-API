import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testt/configs/theme/theme_text.dart';
import '../../../configs/extensions.dart';
import '../widgets/input_email_widget.dart';
import '../widgets/input_password_widget.dart';
import '../widgets/login_button_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In',
            style: Themetext.heading1.copyWith(fontSize: 25.sp)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InputEmailWidget(
                  focusNode: emailFocusNode,
                  passwordFocusNode: passwordFocusNode),
              InputPasswordWidget(focusNode: passwordFocusNode),
              SizedBox(
                height: context.mediaQueryHeight * .085,
              ),
              const LoginButtonWidget(),
              SizedBox(
                height: context.mediaQueryHeight * .02,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }
}
