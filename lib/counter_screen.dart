import 'package:basketballcounter/buttons.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var texta = 0;
  var textb = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191919),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff191919),
        centerTitle: true,
        title: const Text(
          'Points Counter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 24.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45.0,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "$texta",
                        style: const TextStyle(
                            fontSize: 150.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Buttons(
                          txt: 'ADD 1 POINT',
                          function: () {
                            setState(() {
                              texta++;
                            });
                          }),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Buttons(
                          txt: 'ADD 2 POINT',
                          function: () {
                            setState(() {
                              texta = texta + 2;
                            });
                          }),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Buttons(
                          txt: 'ADD 3 POINT',
                          function: () {
                            setState(() {
                              texta = texta + 3;
                            });
                          }),
                    ],
                  ),
                ),
                const VerticalDivider(
                  color: Color(0xffBED754),
                  thickness: 1,
                  endIndent: 170,
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45.0,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        '$textb',
                        style: const TextStyle(
                            fontSize: 150.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Buttons(
                          txt: 'ADD 1 POINT',
                          function: () {
                            setState(() {
                              textb++;
                            });
                          }),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Buttons(
                          txt: 'ADD 2 POINT',
                          function: () {
                            setState(() {
                              textb = textb + 2;
                            });
                          }),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Buttons(
                          txt: 'ADD 3 POINT',
                          function: () {
                            setState(() {
                              textb = textb + 3;
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff750E21),
                  shape: const CircleBorder(eccentricity: 0),
                  minimumSize: const Size.square(70.0)),
              onPressed: () {
                setState(() {
                  texta = 0;
                  textb = 0;
                });
              },
              child: const Icon(
                Icons.replay,
                size: 30.0,
              ))
        ],
      ),
    );
  }
}
