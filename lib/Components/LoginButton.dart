import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final Widget route;
  const LoginButton({required this.text, required this.route});

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
        //validar login

        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => route,
            ));
      },
      child: Text(text),
    );
  }
}
