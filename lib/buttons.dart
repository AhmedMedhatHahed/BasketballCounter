import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key, required this.txt, required this.function});
 final String txt;
 final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff750E21),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        minimumSize:const Size(100.0, 48.0)
      ),
        onPressed: function,
        child: Text(
            txt,
          style:const TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 18.0
          ) ,
        )
    );
  }
}
