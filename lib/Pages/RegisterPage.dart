import 'package:flutter/material.dart';
import '../Components/Label.dart';
import '../Components/InputText.dart';
import '../Components/RegisterButton.dart';
import './HomePage.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 350,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Label(
                  text: "Registre-se",
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                const Label(
                  text: "Por favor, insira seus dados",
                  fontSize: 15,
                  color: Color(0xFF6B7280),
                  width: 325,
                  padding: EdgeInsets.only(bottom: 20),
                ),
                const Label(
                  text: "Nome",
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                const InputText(
                  text: "Nome",
                  width: 330,
                  prefixIcon: Icon(Icons.person),
                ),
                const Label(
                  text: "Email",
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                ),
                const InputText(
                  text: "leonardo@gmail.com",
                  width: 330,
                  prefixIcon: Icon(Icons.email),
                ),
                const Label(
                  text: "Telefone",
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                ),
                const InputText(
                  text: "063 99999-9999",
                  width: 330,
                  prefixIcon: Icon(Icons.phone),
                ),
                const Label(
                  text: "Crie uma senha",
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                ),
                const InputText(
                  text: "********",
                  width: 330,
                  prefixIcon: Icon(Icons.key),
                  obscureText: true,
                ),
                const Label(
                  text: "Confirme a senha",
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                ),
                const InputText(
                  text: "********",
                  width: 330,
                  prefixIcon: Icon(Icons.key),
                  obscureText: true,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Label(
                          text:
                              "Ao clicar em Registre-se você está concordando com os ",
                          fontSize: 11,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Label(
                          text: "Termos de serviço e privacidade",
                          fontSize: 11,
                          color: Color.fromARGB(255, 33, 107, 255),
                        ),
                      ),
                    ],
                  ),
                ),
                RegisterButton(
                  text: "Registre-se",
                  route: HomePage(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Label(
                      text: "Já tem uma conta?",
                      fontSize: 14,
                      color: Color(0xFF6B7280),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Label(
                        text: "Entrar",
                        fontSize: 14,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
