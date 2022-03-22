import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_3/about.dart';
import 'package:flutter_application_3/custom.dart';
import 'package:flutter_application_3/homepage.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class MyHomePage extends GetView<MyDrawerController> {
  bool isRtl = false;
  bool get isRTL => contextDirection == TextDirection.rtl;

  get contextDirection => null;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerController>(
      builder: (_) => ZoomDrawer(
        controller: _.zoomDrawerController,
        menuScreen: MenuScreen(),
        mainScreen: MainScreen(),
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        backgroundColor: Colors.grey,
        slideWidth: MediaQuery.of(context).size.width * 0.45,
      ),
    );
  }
}

class MenuScreen extends GetView<MyDrawerController> {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class MainScreen extends GetView<MyDrawerController> {
  final zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onTap: () {
              controller.toggleDrawer();
            }),
        iconTheme: IconThemeData(color: Colors.blue[900]),
        elevation: 0,
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Hi,User",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 05,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 15),
                    child: Text("Discover Where You Belong From",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.12,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Your Catagory",
                          prefixIcon: Icon(Icons.search)),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
                child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 3,
                          spreadRadius: 2,
                          offset: Offset(1, 3),
                        ),
                      ],
                    ),
                    child: Custom(
                      icon: Icons.place,
                      title: "History Of Munshiganj",
                    )),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 3,
                        spreadRadius: 2,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child:
                      Custom(title: "Place's In Munshiganj", icon: Icons.house),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 3,
                        spreadRadius: 2,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: Custom(
                      title: "City Of Courage", icon: Icons.military_tech),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 3,
                        spreadRadius: 2,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: Custom(
                    title: "Historical Figure",
                    icon: Icons.people,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 3,
                        spreadRadius: 2,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: Custom(
                    title: "Historical Institute",
                    icon: Icons.school,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 3,
                        spreadRadius: 2,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: Custom(
                    icon: Icons.location_city,
                    title: "Current Munshiganj",
                  ),
                )
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.blueGrey,
        notchMargin: 4.0,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => About()),
                    );
                  },
                  child: Icon(Icons.people_alt_outlined,
                      color: Colors.blue.shade900)),
              title: Text(
                "About Us",
                style: TextStyle(color: Colors.blue.shade900),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.blue.shade900,
              ),
              title: Text(
                "Setting's",
                style: TextStyle(color: Colors.blue.shade900),
              )),
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class MyDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();

  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
    update();
  }
}
