import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        child: TextField(
          style: TextStyle(fontSize: 12),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            hintText: "Search",
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            suffixIcon: Icon(
              FontAwesomeIcons.search,
              size: 15,
            ),
            filled: true,
            fillColor: Colors.white.withOpacity(0.8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              borderSide: BorderSide(
                style: BorderStyle.none,
                width: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
