import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String text;
  final double width;
  const InputText({super.key, required this.text, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextField(
                decoration: InputDecoration(
                  hintText: text,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
    );
  }
}