import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> drawerItems = [
  {'icon': FontAwesomeIcons.chevronRight, 'title': 'Franchise'},
  {'icon': FontAwesomeIcons.chevronRight, 'title': 'Book Service'},
  {'icon': FontAwesomeIcons.chevronRight, 'title': 'Membership'},
  {'icon': FontAwesomeIcons.chevronRight, 'title': 'Favorites'},
  {'icon': FontAwesomeIcons.chevronRight, 'title': 'Notifications'},
  {'icon': FontAwesomeIcons.chevronRight, 'title': 'Edit Profile'},
];
