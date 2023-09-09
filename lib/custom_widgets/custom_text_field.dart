import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.hintText,
    this.maxLines = 1,
    this.onChange,
  });

  String? hintText;

  int? maxLines;
  Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.left,
      maxLines: maxLines,
      style: const TextStyle(
        color: Color(0xff53DCC9),
      ),
      onChanged: onChange,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 30.0,
          horizontal: 20.0,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xff53DCC9),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
