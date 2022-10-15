import 'package:flutter/material.dart';

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Stroked text as border.
        Text(
          'Greetings, planet!',
          style: TextStyle(
            fontSize: 40,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 6
              ..color = Colors.blue[700]!,
          ),
        ),
        // Solid text as fill.
        Text(
          'Greetings, planet!',
          style: TextStyle(
            fontSize: 40,
            color: Colors.grey[300],
          ),
        ),
        // Text(
        //   'Greetings, planet!',
        //   style: TextStyle(
        //       fontSize: 40,
        //       foreground: Paint()
        //         ..shader = ui.Gradient.linear(
        //           const Offset(0, 20),
        //           const Offset(150, 20),
        //           <Color>[
        //             Colors.red,
        //             Colors.yellow,
        //           ],
        //         )),
        // ),
      ],
    );
  }
}
