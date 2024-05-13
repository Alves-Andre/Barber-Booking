import 'package:flutter/material.dart';
import 'package:barberbooking/Pages/HomePage.dart';
import 'package:flutter/widgets.dart';
import 'package:barberbooking/Components/Button.dart';
import 'package:barberbooking/Components/InputText.dart';
import 'package:barberbooking/Components/Label.dart';
import 'package:barberbooking/Pages/RegisterPage.dart';

void Function() navegarLoginPage(BuildContext context) { // Altere o tipo de retorno para void Function()
  return () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  };
}
void Function() navegarRegisterPage(BuildContext context) { // Altere o tipo de retorno para void Function()
  return () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()),
    );
  };
}
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center( // Centraliza a Column verticalmente
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Label(text: "Bem-vindo!!!", fontSize: 30, color: Color(0xFF6B7280),),
              const Label(text: "Faça login para continuar", fontSize: 15, color: Color(0xFF6B7280),),
              const Label(text: "Por favor informe seu e-mail e senha para entrar na sua conta.", fontSize: 15, color: Color(0xFF6B7280), width: 325,),
              const InputText(text: "Usuário", width: 330),
              const InputText(text: "Senha", width: 330),
              const InputText(text: "Esqueceu a senha?", width: 330),
              const Button(text: "Entrar",route: HomePage(),),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Label(text: "Não tem uma conta?", fontSize: 15, color: Color(0xFF6B7280),),
                  TextButton(
                    onPressed: navegarRegisterPage(context), // Altere o tipo de retorno para void Function()
                    child: const Label(text: "Registre-se", fontSize: 15, color: Color(0xFF6B7280),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}