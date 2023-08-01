import 'package:flutter/material.dart';
import 'package:suvidha_sarathi/CustomDrawer/Drawer.dart';
import 'package:suvidha_sarathi/Unitls/Appcolor.dart';
import 'package:suvidha_sarathi/Unitls/api_url.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Suvidhasarathi_Home extends StatefulWidget {
  const Suvidhasarathi_Home({Key? key}) : super(key: key);

  @override
  State<Suvidhasarathi_Home> createState() => _Suvidhasarathi_HomeState();
}

class _Suvidhasarathi_HomeState extends State<Suvidhasarathi_Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Appcolor.BLUE,
      home: Scaffold(
        drawer: CustomNavigationbar(),
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: WebView(
            zoomEnabled: true,
            initialUrl: '${AppUrl.web}/staticpages/home.aspx',
          ),
        ),
      ),
    );
  }
}
