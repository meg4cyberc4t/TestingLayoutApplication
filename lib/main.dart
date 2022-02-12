import 'package:flutter/material.dart';
import 'package:untitled/pages/homepage.dart';
import 'package:untitled/pages/viewpage.dart';
import 'package:untitled/pages/viewpage1.dart';
import 'package:untitled/pages/viewpage2.dart';
import 'package:untitled/pages/viewpage3.dart';
import 'package:untitled/theme_data_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeDataService.themeData,
      initialRoute: ViewPage.routeName,
      onUnknownRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (BuildContext context) => const ProfilePage(),
        );
      },
      onGenerateRoute: (RouteSettings routeSettings) {
        switch (routeSettings.name) {
          case ViewPage.routeName:
            return MaterialPageRoute(
              settings: routeSettings,
              builder: (BuildContext context) => const ViewPage(),
            );
          case ViewPage1.routeName:
            return MaterialPageRoute(
              settings: routeSettings,
              builder: (BuildContext context) => const ViewPage1(),
            );
          case ViewPage2.routeName:
            return MaterialPageRoute(
              settings: routeSettings,
              builder: (BuildContext context) => const ViewPage2(),
            );
          case ViewPage3.routeName:
            return MaterialPageRoute(
              settings: routeSettings,
              builder: (BuildContext context) => const ViewPage3(),
            );
          case ProfilePage.routeName:
            return MaterialPageRoute(
              settings: routeSettings,
              builder: (BuildContext context) => const ProfilePage(),
            );
        }
        return null;
      },
    );
  }
}
