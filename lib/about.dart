import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.blue[900],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 8),
                        child: Text(
                          "SoftVerse It",
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 0, left: 8),
                        child: Text("An It With All Solutijon's",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 150),
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Image(
                        image: AssetImage(
                          "image/1.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 200),
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text("About SoftVerse",
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(),
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Image(image: AssetImage("image/2.png"))),
                Container(
                    margin: EdgeInsets.only(),
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text("Our Contact",
                        style: TextStyle(fontSize: 20, color: Colors.black))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(),
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text("About This App",
                        style: TextStyle(fontSize: 20, color: Colors.black))),
                Container(
                    margin: EdgeInsets.only(),
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Image(image: AssetImage("image/3.png"))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
