// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
    this.oldValue,
    this.onChange,
  });

  final String hintText;
  final int maxLines;
  final Function(String)? onChange;
  final void Function(String?)? onSaved;
  final String? oldValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: oldValue,
      onSaved: onSaved,
      onChanged: onChange,
      validator: (data) {
        if ((data?.isEmpty ?? true)) {
          return "field is required";
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      textAlign: TextAlign.left,
      maxLines: maxLines,
      style: const TextStyle(
        color: kPrimaryColor,
      ),
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
