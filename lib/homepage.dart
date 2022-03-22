import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue.shade800,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 15),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Md Shahed",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text("Home",
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
              ListTile(
                leading: Icon(
                  Icons.verified_user,
                  color: Colors.white,
                ),
                title: Text("Profile",
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
              ExpansionTile(
                title: Text(
                  "Settings",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.colorize,
                      color: Colors.white,
                    ),
                    title: Text("Theme",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  )
                ],
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text("About Us",
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
              SizedBox(
                height: 140,
              ),
              Container(
                width: 170,
                height: 40,
                margin: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.logout,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Logout",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
