import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  const Date({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      DateTime.now().toString(),
      style: TextStyle(
        color: Colors.blue[200],
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
