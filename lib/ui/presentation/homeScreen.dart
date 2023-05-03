import 'package:calculadora_simple/ui/widgets/botones_widget.dart';
import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 103, 112),
            Color.fromARGB(255, 2, 44, 69)
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            //aqui empieza el disseniado de los botones
            child: Column(
              children: [
                //este row es para los parentesis
                Row(
                  children: [botones_widget(c: "("), botones_widget(c: ")")],
                ),
                //este Row es para la separacion de numeros y simbolos
                Row(
                  children: [
                    //Este column alberga todos los numeros
                    Column(
                      children: [
                        Row(
                          children: [
                            botones_widget(c: "9"),
                            botones_widget(c: "8"),
                            botones_widget(c: "7"),
                          ],
                        ),
                        Row(
                          children: [
                            botones_widget(c: "4"),
                            botones_widget(c: "5"),
                            botones_widget(c: "6"),
                          ],
                        ),
                        Row(
                          children: [
                            botones_widget(c: "3"),
                            botones_widget(c: "2"),
                            botones_widget(c: "1"),
                          ],
                        ),
                        Row(
                          children: [
                            botones_widget(c: "0"),
                            botones_widget(c: "."),
                            botones_widget(c: "C"),
                          ],
                        ),
                      ],
                    ),
                    //Este column alberga todos los simbolos
                    Column(
                      children: [
                        Row(
                          children: [
                            botones_widget(c: "-"),
                            botones_widget(c: "/")
                          ],
                        ),
                        Row(
                          children: [
                            botones_widget(c: "+"),
                            Column(
                              children: [
                                botones_widget(c: "x"),
                                botones_widget(c: "%")
                              ],
                            )
                          ],
                        ),
                        botones_widget(c: "=")
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
