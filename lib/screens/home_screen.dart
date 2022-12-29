import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/searchbox.dart';
import '../widgets/service_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String _currentUser = "Miko";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(top: 15.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Good to see you",
                        style: TextStyle(
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontFamily: kMainText),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "$_currentUser!",
                        style: const TextStyle(
                          color: kDarkBlue,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 55.0,
                    height: 55.0,
                    padding: const EdgeInsets.all(2.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/img/user_profile.jpg",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const SearchBox(),
            const SizedBox(
              height: 20.0,
            ),
            const ServiceList(),
          ],
        ),
      ),
    );
  }
}
