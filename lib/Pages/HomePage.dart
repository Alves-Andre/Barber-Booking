import 'package:flutter/material.dart';
import 'package:barberbooking/Pages/LoginPage.dart';
import 'package:barberbooking/Components/Button.dart';

void Function() navegarLoginPage(BuildContext context) { // Altere o tipo de retorno para void Function()
  return () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  };
}
@override
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: 
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text('Home'),
                    Button(text: "Sair",route: LoginPage(),)
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}