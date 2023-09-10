// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onChange,
  });

  final String hintText;
  final int maxLines;
  final Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      textAlign: TextAlign.left,
      maxLines: maxLines,
      style: const TextStyle(
        color: kPrimaryColor,
      ),
      onChanged: onChange,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 30.0,
          horizontal: 20.0,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        border: rounderBorder(color: Colors.white),
        enabledBorder: rounderBorder(color: Colors.white),
        focusedBorder: rounderBorder(color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder rounderBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide(color: color),
    );
  }
}
