import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_example/users/view_models/users_view_model.dart';
import 'package:mvvm_example/utils/themes.dart';
import 'package:provider/provider.dart';

import 'users/views/homescreen.dart';

void main() {
  
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: [SystemUiOverlay.top])
      .then((value) => ScreenUtilInit(
        splitScreenMode: true,
        designSize: const Size(375, 812),
          builder: (BuildContext context, Widget? child) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UsersViewModel())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        darkTheme: MyThemes.darkTheme,
        theme: MyThemes.lightTheme,
        home: const HomePage(),
      ),
    );
  }
}
