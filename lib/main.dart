import 'package:dyou/provider/main_provider.dart';
import 'package:dyou/screens/home/post_a_job.dart';
import 'package:dyou/screens/splash_screen/splash_screen.dart';
import 'package:dyou/theme_service/theme_service.dart';
import 'package:dyou/utilites/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return ChangeNotifierProvider<MainProvider>(
          create: (context) => MainProvider(),
          builder: (context, child) => MaterialApp(
              title: "dyou_user",
              themeMode: ThemeService().theme,
              theme: ThemeData(
                splashColor: kMainColor,
                accentColor: kMainColor,
                fontFamily: "Poppins",
                primaryColor: Color(0xff1D2D61),
              ),
              debugShowMaterialGrid: false,
              debugShowCheckedModeBanner: false,
              home: SplashScreen()),
        );
      },
      designSize: const Size(428, 926),
    );
  }
}

// mesum remove
