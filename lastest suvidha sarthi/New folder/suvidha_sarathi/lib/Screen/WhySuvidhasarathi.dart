import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:suvidha_sarathi/CustomDrawer/Drawer.dart';
import 'package:suvidha_sarathi/Unitls/api_url.dart';
import 'dart:developer' as logdav;

import 'package:suvidha_sarathi/model/whysuvidhasarthi_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../model/login_model.dart';

class WhySuvidhasarathi extends StatefulWidget {
  const WhySuvidhasarathi({Key? key}) : super(key: key);

  @override
  State<WhySuvidhasarathi> createState() => _WhySuvidhasarathiState();
}

class _WhySuvidhasarathiState extends State<WhySuvidhasarathi> {
  String? target;
  late WebViewController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    suvidha();
  }

  Future<void> suvidha() async {
    var data = {'LanguageID': "1", 'ApiKey': "123"};
    post(Uri.parse("${AppUrl.liveBaseURl}/GetAllStaticData"), body: data)
        .then((res) {
      logdav.log(res.body.toString(), name: 'response');
      whysuvidhasarathi_model modelclass =
          whysuvidhasarathi_model.fromJson(jsonDecode(res.body));
      var link = modelclass.data!.link!.forEach((element) {
        logdav.log(element.text.toString(), name: "text");
        logdav.log(element.name.toString(), name: "name");
        if (element.name == "AboutUs") {
          setState(() {
            target = element.text.toString();
          });
          // logdav.log(target);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          drawer: CustomNavigationbar(),
          appBar: AppBar(
            title: Text('Why Suvidha sarthi'),
          ),
          body: WebView(
            onWebViewCreated: (WebViewController webviewontroller) {
              _controller = webviewontroller;
              target = _controller.currentUrl() as String?;
            },
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: Uri.decodeFull(target!),
          )),
    );
  }
}
