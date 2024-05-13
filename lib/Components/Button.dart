import 'package:flutter/material.dart';
import 'package:barberbooking/Pages/HomePage.dart';

class Button extends StatelessWidget {
  final String text;
  final Widget route;
  const Button({super.key, required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(200, 50)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route,)
        );
      },
      child: Text(text),
    );
  }
}