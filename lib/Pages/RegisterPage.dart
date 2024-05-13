import 'package:flutter/material.dart';
import 'package:barberbooking/Pages/HomePage.dart';
import 'package:barberbooking/Components/Button.dart';
import 'package:barberbooking/Components/InputText.dart';
import 'package:barberbooking/Components/Label.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center( 
          child: Container(
            width: 350,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              const Label(text: "Registre-se!!!", fontSize: 30, color: Color.fromARGB(255, 0, 0, 0),),
              const Label(text: "Por favor, insira seus dados", fontSize: 15, color: Color(0xFF6B7280), width: 325,),
              const Label(text: "Nome", fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
              const InputText(text: "Nome", width: 330),
              const Label(text: "E-mail", fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
              const InputText(text: "E-mail", width: 330),
              const Label(text: "Telefone", fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
              const InputText(text: "Telefone", width: 330),
              const Label(text: "Senha", fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
              const InputText(text: "Senha", width: 330),
              const Label(text: "Confirme a senha", fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
              const InputText(text: "Confirme a senha", width: 330),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //para os itens ir para a linha de baixo
                children: [
                  const Label(text: "Ao clicar em Registre-se você está concordando com os ", fontSize: 11, color: Color.fromARGB(255, 0, 0, 0)),
                  TextButton(
                    onPressed: () {},
                    child: const Label(text: "Termos de serviço e privacidade", fontSize: 11, color: Color.fromARGB(255, 33, 107, 255),),
                  ),
                ],
              ),              
              const Button(text: "Registre-se",route: HomePage(),),
              Wrap(
                alignment: WrapAlignment.start, // alinha os itens à esquerda
                children: [
                  const Label(
                    text: "Ao clicar em Registre-se você está concordando com os ",
                    fontSize: 11,
                    color: Color.fromARGB(255, 0, 0, 0),
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
            ],
          ),
          )
          
        )
      )
    );
  }

}