import 'package:flutter/material.dart';
import 'package:suvidha_sarathi/Navigationscreen/route_screen.dart';
import 'package:suvidha_sarathi/Unitls/geticon.dart';
import 'package:suvidha_sarathi/model/Drawermodel.dart';

List<Drawermodel> model = [
  Drawermodel(
    id: 0,
    name: 'Home',
    screenname: RouteScreen.Login,
    icon: getIcons.suvidha_sarathi,
  ),
];
