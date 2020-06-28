import 'package:flutter/material.dart';

class RateButton extends StatefulWidget {
  @override
  _RateButtonState createState() => _RateButtonState();
}

class _RateButtonState extends State<RateButton> {
  bool isRate = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isRate ? Icons.star : Icons.star_border,
        color: Colors.yellow,
        size: 30,
      ),
      onPressed: () {
        setState(() {
          isRate = !isRate;
        });
      },
    );
  }
}