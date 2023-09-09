import 'package:flutter/material.dart';

class DescrationOfNote extends StatelessWidget {
  const DescrationOfNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      alignment: Alignment.centerLeft,
      //color: Colors.red,
      child: Text(
        "Build your carear with ayhm",
        style: TextStyle(color: Colors.grey, fontSize: 26),
      ),
    );
  }
}
