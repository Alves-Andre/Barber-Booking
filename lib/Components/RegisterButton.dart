import 'package:flutter/material.dart';
import '../pages/LoginPage.dart';

void Function() navegarLoginPage(BuildContext context) {
  return () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  };
}

class RegisterButton extends StatelessWidget {
  final String text;
  final Widget route;
  const RegisterButton({required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
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
              MaterialPageRoute(
                builder: (context) => route,
              ));
        },
        child: Text(text),
      ),
    );
  }
}
