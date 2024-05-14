import 'package:flutter/material.dart';
import 'package:barberbooking/Pages/HomePage.dart';
import 'package:flutter/widgets.dart';
import 'package:barberbooking/Components/Button.dart';
import 'package:barberbooking/Components/InputText.dart';
import 'package:barberbooking/Components/Label.dart';
import 'package:barberbooking/Pages/RegisterPage.dart';
import 'package:barberbooking/Pages/RememberPage.dart';

void Function() navegarLoginPage(BuildContext context) {
  // Altere o tipo de retorno para void Function()
  return () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  };
}

void Function() navegarRegisterPage(BuildContext context) {
  // Altere o tipo de retorno para void Function()
  return () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()),
    );
  };
}

void Function() navegarRememberPage(BuildContext context) {
  // Altere o tipo de retorno para void Function()
  return () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RememberPage()),
    );
  };
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          // Centraliza a Column verticalmente
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/pictures/logo.jpeg',
                    width: 200,
                    height: 200,
                  ),
                  const Label(
                    text: "Bem-vindo!!!",
                    fontSize: 28,
                    color: Color(0xFF6B7280),
                  ),
                  const Label(
                    text: "Faça login para continuar",
                    fontSize: 14,
                    color: Color(0xFF6B7280),
                  ),
                  const Label(
                    text:
                        "Por favor informe seu e-mail e senha para entrar na sua conta.",
                    fontSize: 16,
                    color: Color(0xFF6B7280),
                    width: 325,
                  ),
                  const Label(
                    text: "Usuário*",
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  const InputText(text: "Usuário", width: 330),
                  const Label(
                    text: "Senha",
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  const InputText(text: "Senha", width: 330),
                  TextButton(
                    onPressed: navegarRememberPage(
                        context), // Altere o tipo de retorno para void Function()
                    child: const Label(
                      text: "Esqueceu a senha?",
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Button(
                    text: "Entrar",
                    route: HomePage(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Label(
                        text: "Não tem uma conta?",
                        fontSize: 14,
                        color: Color(0xFF6B7280),
                      ),
                      TextButton(
                        onPressed: navegarRegisterPage(
                            context), // Altere o tipo de retorno para void Function()
                        child: const Label(
                          text: "Registre-se",
                          fontSize: 14,
                          color: Color(0xFF6B7280),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
