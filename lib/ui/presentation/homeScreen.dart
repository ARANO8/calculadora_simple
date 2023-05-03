import 'package:calculadora_simple/ui/widgets/botones_widget.dart';
import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

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
            padding: const EdgeInsets.all(20),
            //aqui empieza el disseniado de los botones
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //este row es para los parentesis
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [botones_widget(c: "("), botones_widget(c: ")")],
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
                            botones_widget(c: "7"),
                            botones_widget(c: "8"),
                            botones_widget(c: "9"),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            botones_widget(c: "6"),
                            botones_widget(c: "5"),
                            botones_widget(c: "4"),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            botones_widget(c: "1"),
                            botones_widget(c: "2"),
                            botones_widget(c: "3"),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            botones_widget(c: "-"),
                            botones_widget(c: "/")
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   child: Text(
                            //     "+",
                            //   ),
                            // ),
                            botones_widget(c: "+"),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                botones_widget(c: "x"),
                                const SizedBox(
                                  height: 10,
                                ),
                                botones_widget(c: "%")
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
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
