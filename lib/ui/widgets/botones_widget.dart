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
        padding: const EdgeInsets.all(20),
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

      // child: Padding(
      //   padding: const EdgeInsets.all(5),
      //   child: ElevatedButton(
      //     onPressed: () {},
      //     child: Text(
      //       c,
      //       style: TextStyle(color: Colors.white),
      //     ),
      //     style: ButtonStyle(
      //       backgroundColor: MaterialStatePropertyAll(getColor(c)),
      //     ),
      //   ),
      // ),
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
        return Colors.teal;
    }
  }

  dynamic text = '0';
  double numUno = 0;
  double numDos = 0;

  dynamic resultado = '';
  dynamic finalresultado = '';
  dynamic opr = '';
  dynamic preOpr = '';

  void calculo() {
    /*
    Switch(c)
    {
      case 'C':
        return text = '0';
        return numUno = 0;
        return numDos = 0;
        return resultadoado = '';
        return finalresultadoadoado = '0';
        return opr = '';
        return preOpr = '';
        break;
    }*/
    if (c == 'C') {
      text = '0';
      numUno = 0;
      numDos = 0;
      resultado = '';
      finalresultado = '0';
      opr = '';
      preOpr = '';
    } else if (opr == '=' && c == '=') {
      if (preOpr == '+') {
        finalresultado = add();
      } else if (preOpr == '-') {
        finalresultado = sub();
      } else if (preOpr == 'x') {
        finalresultado = mul();
      } else if (preOpr == '/') {
        finalresultado = div();
      }
    } else if (c == '+' || c == '-' || c == 'x' || c == '/' || c == '=') {
      if (numUno == 0) {
        numUno = double.parse(resultado);
      } else {
        numDos = double.parse(resultado);
      }

      if (opr == '+') {
        finalresultado = add();
      } else if (opr == '-') {
        finalresultado = sub();
      } else if (opr == 'x') {
        finalresultado = mul();
      } else if (opr == '/') {
        finalresultado = div();
      }
      preOpr = opr;
      opr = c;
      resultado = '';
    } else if (c == '%') {
      resultado = numUno / 100;
      finalresultado = doesContainDecimal(resultado);
    } else if (c == '.') {
      if (!resultado.toString().contains('.')) {
        resultado = resultado.toString() + '.';
      }
      finalresultado = resultado;
    } else if (c == '+/-') {
      resultado.toString().startsWith('-')
          ? resultado = resultado.toString().substring(1)
          : resultado = '-' + resultado.toString();
      finalresultado = resultado;
    } else {
      resultado = resultado + c;
      finalresultado = resultado;
    }

/*
    setState(() {
          text = finalresultado;
        });*/
  }

  String add() {
    resultado = (numUno + numDos).toString();
    numUno = double.parse(resultado);
    return doesContainDecimal(resultado);
  }

  String sub() {
    resultado = (numUno - numDos).toString();
    numUno = double.parse(resultado);
    return doesContainDecimal(resultado);
  }

  String mul() {
    resultado = (numUno * numDos).toString();
    numUno = double.parse(resultado);
    return doesContainDecimal(resultado);
  }

  String div() {
    resultado = (numUno / numDos).toString();
    numUno = double.parse(resultado);
    return doesContainDecimal(resultado);
  }

  String doesContainDecimal(dynamic resultado) {
    if (resultado.toString().contains('.')) {
      List<String> splitDecimal = resultado.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0))
        return resultado = splitDecimal[0].toString();
    }
    return resultado;
  }
}
