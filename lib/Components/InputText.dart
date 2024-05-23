import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String text;
  final double width;
  final String? type;
  final bool? obscureText;
  final Icon? prefixIcon;
  const InputText(
      {this.type,
      this.obscureText,
      this.prefixIcon,
      required this.text,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
        validator: validateEmail,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          prefixIconColor: Color.fromARGB(255, 0, 0, 0),
          hintText: type,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}

String? validateEmail(String? value) {
  const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
  final regex = RegExp(pattern);

  return value!.isNotEmpty && !regex.hasMatch(value)
      ? 'Digite um Email válido'
      : null;
}
