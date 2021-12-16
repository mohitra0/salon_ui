import 'package:flutter/material.dart';
import 'package:cutnstyle/pages/drawerScreen.dart';
import 'package:cutnstyle/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [DrawerScreen(), Dashbaord()],
      ),
    );
  }
}
