import 'package:flutter/material.dart';

import '../constants.dart';

class TitleBar extends StatelessWidget {
  final String title;
  const TitleBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 15),
      child: Stack(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            iconSize: 20.0,
            onPressed: () => Navigator.pop(context),
            color: kDarkBlue,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: kDarkBlue,
                  fontFamily: kMainText,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
