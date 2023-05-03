import 'package:flutter/material.dart';

class botones_widget extends StatelessWidget {
  String c;

  botones_widget({superkey, required this.c});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        //color: getColor(c),
        color: getColor(c),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            c,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }

  Color getColor(String valor) {
    switch (valor) {
      case '(':
      case ')':
        return Color.fromARGB(255, 1, 54, 72);
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case '.':
      case 'C':
        return Colors.transparent;
      default:
        return Colors.black;
    }
  }
}
