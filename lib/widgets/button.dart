import 'package:flutter/material.dart';

import '../constants.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  
  
  const Button({Key? key, required this.text, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        backgroundColor: kDarkBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(
            style: BorderStyle.none,
          ),
        ));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        height: 45,
        child: ElevatedButton(
          style: style,
          onPressed: onPress,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
