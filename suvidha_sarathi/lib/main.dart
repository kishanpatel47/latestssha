import 'package:flutter/material.dart';

import 'package:suvidha_sarathi/Navigationscreen/Routes.dart';
import 'package:suvidha_sarathi/Navigationscreen/route_screen.dart';
import 'package:suvidha_sarathi/helpers/register_web_webview_stub.dart'
    if (dart.library.html) 'package:suvidha_sarathi/helpers/register_web_webview.dart';

void main() {
  registerWebViewWebImpementation();
  runApp(AndroidRoute());
}

class AndroidRoute extends StatefulWidget {
  const AndroidRoute({Key? key}) : super(key: key);

  @override
  State<AndroidRoute> createState() => _AndroidRouteState();
}

class _AndroidRouteState extends State<AndroidRoute> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.generateRoute,
      initialRoute: RouteScreen.Splash,
    );
  }
}
