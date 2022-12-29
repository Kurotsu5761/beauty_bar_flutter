import 'package:flutter/material.dart';

class CommentBox extends StatelessWidget {
  const CommentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
        minLines: 2,
        maxLines: 10,
        style: TextStyle(
          fontSize: 12,
        ),
        decoration: InputDecoration(
          hintText: "I'll be late for 10 minutes",
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
