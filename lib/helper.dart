import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testt/configs/routes/routes.dart';
import 'package:testt/configs/routes/routes_name.dart';
import 'package:testt/configs/theme/state.dart';
import 'package:testt/features/login/view_model/login_view_model.dart';
import 'package:provider/provider.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LoginViewModel()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (BuildContext context, themeProvider, Widget? child) {
          return ScreenUtilInit(
            child: MaterialApp(
              navigatorKey: navigatorKey,
              debugShowCheckedModeBanner: false,
              title: 'APS',
              theme: themeProvider.themeData,
              initialRoute: RoutesName.splash,
              onGenerateRoute: Routes.generateRoute,
            ),
          );
        },
      ),
    );
  }
}
