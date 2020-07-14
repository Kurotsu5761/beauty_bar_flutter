import 'package:flutter/material.dart';

import '../constants.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const Button({Key key, this.text, @required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        height: 45,
        child: RaisedButton(
          color: kDarkBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(
              style: BorderStyle.none,
            ),
          ),
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
