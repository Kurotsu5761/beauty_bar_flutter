import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/searchbox.dart';
import '../widgets/service_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String _currentUser = "Miko";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 15.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Good to see you",
                        style: TextStyle(
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontFamily: kMainText),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "$_currentUser!",
                        style: TextStyle(
                          color: kDarkBlue,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/img/user_profile.jpg",
                      ),
                    ),
                    width: 55.0,
                    height: 55.0,
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SearchBox(),
            SizedBox(
              height: 20.0,
            ),
            ServiceList(),
          ],
        ),
      ),
    );
  }
}
