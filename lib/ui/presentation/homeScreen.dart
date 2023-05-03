import 'package:calculadora_simple/ui/widgets/botones_widget.dart';
import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    //dynamic displaytxt20;
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 0, 103, 112),
          Color.fromARGB(255, 2, 44, 69)
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),
      child: Container(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 10, bottom: 10),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //aqui empieza la parte donde se muestran los datos
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          finalResult,
                          style: TextStyle(color: Colors.white, fontSize: 150),
                        ),
                        Text(
                          numerito,
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                //aqui empieza el disseniado de los botones
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //este row es para los parentesis
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 170, child: botones_widget(c: "(")),
                        SizedBox(width: 170, child: botones_widget(c: ")"))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //este Row es para la separacion de numeros y simbolos
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Este column alberga todos los numeros
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                botones_widget(
                                  c: "7",
                                  onPressed: () {
                                    calculation('7');
                                  },
                                ),
                                botones_widget(
                                  c: "8",
                                  onPressed: () {
                                    calculation('8');
                                  },
                                ),
                                botones_widget(
                                  c: "9",
                                  onPressed: () {
                                    calculation('9');
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                botones_widget(
                                  c: "6",
                                  onPressed: () {
                                    calculation('6');
                                  },
                                ),
                                botones_widget(
                                  c: "5",
                                  onPressed: () {
                                    calculation('5');
                                  },
                                ),
                                botones_widget(
                                  c: "4",
                                  onPressed: () {
                                    calculation('4');
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                botones_widget(
                                  c: "1",
                                  onPressed: () {
                                    calculation('1');
                                  },
                                ),
                                botones_widget(
                                  c: "2",
                                  onPressed: () {
                                    calculation('2');
                                  },
                                ),
                                botones_widget(
                                  c: "3",
                                  onPressed: () {
                                    calculation('3');
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                botones_widget(
                                  c: "0",
                                  onPressed: () {
                                    calculation('0');
                                  },
                                ),
                                botones_widget(
                                  c: ".",
                                  onPressed: () {
                                    calculation('.');
                                  },
                                ),
                                botones_widget(
                                  c: "C",
                                  onPressed: () {
                                    calculation('C');
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        //Este column alberga todos los simbolos
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                botones_widget(
                                  c: "-",
                                  onPressed: () {
                                    calculation('-');
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                botones_widget(
                                  c: "/",
                                  onPressed: () {
                                    calculation('/');
                                  },
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 130,
                                  child: TextButton(
                                      style: const ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll<Color>(
                                                  Colors.teal)),
                                      onPressed: () {
                                        calculation('+');
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Center(
                                          child: Text(
                                            '+',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ), //botones_widget(c: "+"),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    botones_widget(
                                      c: "x",
                                      onPressed: () {
                                        calculation('x');
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    botones_widget(
                                      c: "%",
                                      onPressed: () {
                                        calculation('%');
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 130,
                              child: TextButton(
                                  style: const ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              Colors.teal)),
                                  onPressed: () {
                                    calculation('=');
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Center(
                                      child: Text(
                                        '=',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  //Calculator logic
  dynamic numerito = '0';

  double numOne = 0;

  double numTwo = 0;

  dynamic result = '';

  dynamic finalResult = '';

  dynamic opr = '';

  dynamic preOpr = '';

  void calculation(btnText) {
    if (btnText == 'C') {
      numerito = '0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';
    } else if (opr == '=' && btnText == '=') {
      if (preOpr == '+') {
        finalResult = add();
      } else if (preOpr == '-') {
        finalResult = sub();
      } else if (preOpr == 'x') {
        finalResult = mul();
      } else if (preOpr == '/') {
        finalResult = div();
      }
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == 'x' ||
        btnText == '/' ||
        btnText == '=') {
      if (numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if (opr == '+') {
        finalResult = add();
      } else if (opr == '-') {
        finalResult = sub();
      } else if (opr == 'x') {
        finalResult = mul();
      } else if (opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result = '';
    } else if (btnText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if (btnText == '.') {
      if (!result.toString().contains('.')) {
        result = result.toString() + '.';
      }
      finalResult = result;
    } else if (btnText == '+/-') {
      result.toString().startsWith('-')
          ? result = result.toString().substring(1)
          : result = '-' + result.toString();
      finalResult = result;
    } else {
      result = result + btnText;
      finalResult = result;
    }

    setState(() {
      numerito = finalResult;
    });
  }

  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }
}
