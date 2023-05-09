// import 'package:flutter/material.dart';

// // state management
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: GridView.count(
//         primary: false,
//         padding: const EdgeInsets.all(20, 0),
//         crossAxisCount: 2,
//         crossAxisSpacing: 10.0,
//         children: [
//           List.generate(16, (index) => {
//             return GridTile(
//               child: Card(
//                 color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0).
//                 ),
//               ),
//             ),
//           }),
//         ],
//       ),
//     );
//   }
// }
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 3,
            // space between
            crossAxisSpacing: 10,
            shrinkWrap: true,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(20, (index) {
              return GridTile(
                child: InkWell(
                  onTap: () {
                    print('1 was clicked');
                  },
                  child: Card(
                    color:
                        Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                            .withOpacity(1.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'hello',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),

                // Text(
                //   'Item $index',
                //   style: Theme.of(context).textTheme.headlineSmall,
                // ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
