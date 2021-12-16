import 'package:cutnstyle/pages/configuration.dart';
import 'package:cutnstyle/widgets/button2.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
            Color(0xFF1b1e44),
            Color(0xFF2d3447),
          ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp)),
      padding: EdgeInsets.only(top: 40, bottom: 70, left: 10),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                maxRadius: 50,
                backgroundImage: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/laid-69.appspot.com/o/saloon%2Frajesh.png?alt=media&token=fb8713ee-8ea7-4924-a63c-68ba39480e6e'),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Rajesh Yadav",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: 0.0,
                      )),
                  MyButton2(btnText: "Active Membership", onpressed: () {}),
                ],
              )
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Column(
            children: drawerItems
                .map((element) => Padding(
                      padding: const EdgeInsets.only(top: 20, left: 8.0),
                      child: Row(
                        children: [
                          Text(element['title'],
                              style: TextStyle(
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                          Spacer(),
                          Icon(
                            element['icon'],
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 200,
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
          Spacer(),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.redAccent.withOpacity(0.5)),
                child: Text("Logout",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("600k",
                      style: TextStyle(
                        color: Color.fromRGBO(241, 118, 138, 1),
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: 0.0,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Customers',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                width: 2,
                height: 40,
                color: Colors.white,
              ),
              Column(
                children: [
                  Text("90",
                      style: TextStyle(
                        color: Color.fromRGBO(241, 118, 138, 1),
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: 0.0,
                      )),
                  Text(
                    'Salons',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                width: 2,
                height: 40,
                color: Colors.white,
              ),
              Column(
                children: [
                  Text("20",
                      style: TextStyle(
                        color: Color.fromRGBO(241, 118, 138, 1),
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: 0.0,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Years',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                width: 2,
                height: 40,
                color: Colors.white,
              ),
              Column(
                children: [
                  Text("15",
                      style: TextStyle(
                        color: Color.fromRGBO(241, 118, 138, 1),
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: 0.0,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Cities',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
