import 'package:flutter/material.dart';

class DateOfNote extends StatelessWidget {
  const DateOfNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Text(
        "${DateTime.now().toString()}",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 22,
        ),
      ),
    );
  }
}
