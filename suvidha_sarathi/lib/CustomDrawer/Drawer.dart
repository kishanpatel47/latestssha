import 'package:flutter/material.dart';
import 'package:suvidha_sarathi/Navigationscreen/route_screen.dart';
import 'package:suvidha_sarathi/CustomDrawer/Drawerlist.dart';

class CustomNavigationbar extends StatefulWidget {
  const CustomNavigationbar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationbar> createState() => _CustomNavigationbarState();
}

class _CustomNavigationbarState extends State<CustomNavigationbar> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.65,
      child: Drawer(
          child: ListView(children: [
        SizedBox(
          height: height * 0.22,
          width: width * 0.21,
          child: UserAccountsDrawerHeader(
            accountEmail: Align(
                alignment: Alignment(-0.90, -0.40),
                child: InkWell(
                    onTap: () => {
                          Navigator.of(context, rootNavigator: true)
                              .pushNamed(RouteScreen.Login)
                        },
                    child: Text('Login | Register'))),
            accountName: null,
            currentAccountPictureSize: Size.square(110),
            currentAccountPicture: Container(
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Align(
                  child: Image.asset(
                'images/Suvidha-Sarthi.png',
                fit: BoxFit.fill,
              )),
            ),
          ),
        ),
        Column(
            children: model.map((userone) {
          return SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: TextButton(
              onPressed: () {
                print("${userone.id}");
                Navigator.of(context, rootNavigator: true)
                    .pushNamed(userone.screenname);
              },
              child: Container(
                child: Column(
                  children: [
                    Container(
                        color: Colors.transparent,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: TextButton(
                            onPressed: () {
                              // );

                              // Navigator.pushNamed(context, RouteScreen.Dashboard);
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ))),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       shape: BoxShape.rectangle, color: Colors.cyan),
                    //   padding: EdgeInsets.all(20),
                    //   width: width * 0.8,
                    //   // child: Row(
                    //   //
                    //   //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   //   mainAxisAlignment: MainAxisAlignment.start,
                    //   //   children: [
                    //   //     // Text(userone.name),
                    //   //     Container(
                    //   //         color: Colors.indigo,
                    //   //         height: 100,
                    //   //         width: 100,
                    //   //         child: Image.asset(userone.icon))
                    //   //   ],
                    //   // ),
                    // )
                  ],
                ),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                color: Colors.green[100],
              ),
            ),
          );
        }).toList())
      ])),
    );
  }
}
