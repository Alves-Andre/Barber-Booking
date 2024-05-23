import 'package:flutter/material.dart';
import '../Components/Label.dart';
import '../Components/InputText.dart';
import '../Components/LoginButton.dart';
import './RememberPage.dart';
import './HomePage.dart';
import './RegisterPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Image.asset(
                      'assets/pictures/barbearia.jpg',
                      width: 400,
                      height: 400,
                    ),
                  ),
                  const Label(
                    text: "Bem-vindo!!!",
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  const Label(
                    text:
                        "Por favor informe seu e-mail e senha para entrar na sua conta.",
                    fontSize: 16,
                    color: Color(0xFF6B7280),
                    width: 325,
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  const Label(
                    text: "Usuário*",
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                    padding: EdgeInsets.only(bottom: 10),
                  ),
                  const InputText(
                      text: "Usuário",
                      width: 330,
                      prefixIcon: Icon(Icons.email),
                      type: "e-mail"),
                  const Label(
                    text: "Senha",
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                    padding: EdgeInsets.only(bottom: 10, top: 10),
                  ),
                  const InputText(
                    text: "Senha",
                    width: 330,
                    prefixIcon: Icon(Icons.key_rounded),
                    type: "password",
                    obscureText: true,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RememberPage()),
                      );
                    },
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
                  LoginButton(
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                        },
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
