import 'package:flutter/material.dart';

void main() {
  runApp(MainButtons3());
}

class MainButtons3 extends StatelessWidget {
  const MainButtons3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MainButtons3',
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatefulWidget {
  const MyButtons({super.key});

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  String msg = 'Flutter RaisedButton Example';

  // List Start
  // List<ListItem> _dropdownItems = [
  //   ListItem(1, "GeeksforGeeks"),
  //   ListItem(2, "Javatpoint"),
  //   ListItem(3, "tutorialandexample"),
  //   ListItem(4, "guru99")
  // ];

  // List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  // ListItem _itemSelected;

  // void initState() {
  //   super.initState();
  //   _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
  //   _itemSelected = _dropdownMenuItems[1].value;
  // }

  // List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
  //   List<DropdownMenuItem<ListItem>> items = List();
  //   for (ListItem listItem in listItems) {
  //     items.add(
  //       DropdownMenuItem(
  //         child: Text(listItem.name),
  //         value: listItem,
  //       ),
  //     );
  //   }
  //   return items;
  // }

  // List End
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter TextButton Example'),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.camera_alt), onPressed: () => {}),
            IconButton(icon: Icon(Icons.account_circle), onPressed: () => {})
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigation),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          onPressed: () => {},
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // dropdown list
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Container(
              //     padding: const EdgeInsets.all(5.0),
              //     decoration: BoxDecoration(
              //         color: Colors.greenAccent, border: Border.all()),
              //     child: DropdownButtonHideUnderline(
              //       child: DropdownButton(
              //           value: _itemSelected,
              //           items: _dropdownMenuItems,
              //           onChanged: (value) {
              //             setState(() {
              //               _itemSelected = value;
              //             });
              //           }),
              //     ),
              //   ),
              // ),
              // Text("We have selected ${_itemSelected.name}"),
              // dropdown list end
              // Container(
              //   margin: EdgeInsets.all(25),
              //   child: TextButton(
              //     child: Text(
              //       'SignUp',
              //       style: TextStyle(fontSize: 20.0),
              //     ),
              //     onPressed: () {},
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.all(25),
              //   child: TextButton(
              //     child: Text(
              //       'LogIn',
              //       style: TextStyle(fontSize: 20.0),
              //     ),
              //     onPressed: () {},
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.all(25),
              //   child: OutlinedButton(
              //     child: Text(
              //       "Outlined Button",
              //       style: TextStyle(fontSize: 20.0),
              //     ),
              //     // highlightedBorderColor: Colors.red,
              //     // shape: RoundedRectangleBorder(
              //     // borderRadius: BorderRadius.circular(15)),
              //     onPressed: () {},
              //   ),
              // ),

              Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        msg,
                        style: TextStyle(
                            fontSize: 30, fontStyle: FontStyle.italic),
                      ),
                      ElevatedButton(
                        child: Text(
                          "Click Here",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: _changeText,
                        // color: Colors.red,
                        // textColor: Colors.yellow,
                        // padding: EdgeInsets.all(8.0),
                        // splashColor: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: IconButtonAction(),
              ),
              Container(
                child: ButtonBarAction(),
              ),
              Container(
                child: InkwellButtonAction(),
              )
            ],
          ),
        ),
      ),
    );
  }

  _changeText() {
    setState(() {
      if (msg.startsWith('F')) {
        msg = 'We have learned FlutterRaised button example.';
      } else {
        msg = 'Flutter RaisedButton Example';
      }
    });
  }
}

//Icon Button
class IconButtonAction extends StatefulWidget {
  const IconButtonAction({super.key});
  @override
  _IconButtonActionState createState() => _IconButtonActionState();
  // State<IconButtonAction> createState() => _IconButtonActionState();

  // @override
}

double _speakervolume = 0.0;

class _IconButtonActionState extends State<IconButtonAction> {
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.volume_up),
          iconSize: 50,
          color: Colors.brown,
          tooltip: 'Increase volume by 5',
          onPressed: () {
            setState(() {
              _speakervolume += 5;
            });
          },
        ),
        Text('Speaker Volume: $_speakervolume')
      ],
    );
  }
}

// Icon Button End
// Inkwell Button
class InkwellButtonAction extends StatefulWidget {
  const InkwellButtonAction({super.key});

  @override
  State<InkwellButtonAction> createState() => _InkwellButtonActionState();
}

class _InkwellButtonActionState extends State<InkwellButtonAction> {
  int _volume = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          splashColor: Colors.green,
          highlightColor: Colors.blue,
          child: Icon(Icons.ring_volume, size: 50),
          onTap: () {
            setState(() {
              _volume += 2;
            });
          },
        ),
        Text(_volume.toString(), style: TextStyle(fontSize: 50)),
      ],
    );
  }
}

// Inkwell Button End
// // Popup Button
// class PopupButtonAction extends StatefulWidget {
//   @override
//   _PopupButtonActionState createState() => _PopupButtonActionState();
// }

// class _PopupButtonActionState extends State<PopupButtonAction> {
//   Choice _selectedOption = choices[0];

//   void _select(Choice choice) {
//     setState(() {
//       _selectedOption = choice;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('PopupMenu Button Example'),
//           actions: <Widget>[
//             PopupMenuButton<Choice>(
//               onSelected: _select,
//               itemBuilder: (BuildContext context) {
//                 return choices.skip(0).map((Choice choice) {
//                   return PopupMenuItem<Choice>(
//                     value: choice,
//                     child: Text(choice.name),
//                   );
//                 }).toList();
//               },
//             ),
//           ],
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: ChoiceCard(choice: _selectedOption),
//         ),
//       ),
//     );
//   }
// }

// class Choice {
//   final String _name;
//   final IconData _icon;
//   const Choice({this._name, this._icon});
// }

// const List<Choice> choices = const <Choice>[
//   const Choice(_name: 'Wi-Fi', _icon: Icons.wifi),
//   const Choice(_name: 'Bluetooth', _icon: Icons.bluetooth),
//   const Choice(_name: 'Battery', _icon: Icons.battery_alert),
//   const Choice(_name: 'Storage', _icon: Icons.storage),
// ];

// class ChoiceCard extends StatelessWidget {
//   const ChoiceCard({Key key, this.choice}) : super(key: key);

//   final Choice choice;

//   @override
//   Widget build(BuildContext context) {
//     final TextStyle textStyle = Theme.of(context).textTheme.headline;
//     return Card(
//       color: Colors.greenAccent,
//       child: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Icon(choice._icon, size: 115.0, color: textStyle.color),
//             Text(choice._name, style: textStyle),
//           ],
//         ),
//       ),
//     );
//   }
// }
// // Popup Button End

// Button Bar Start
class ButtonBarAction extends StatefulWidget {
  @override
  _ButtonBarActionState createState() => _ButtonBarActionState();
}

class _ButtonBarActionState extends State<ButtonBarAction> {
  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //     appBar: AppBar(
        //       title: Text('Flutter ButtonBar Example'),
        //     ),
        //     body: Padding(
        //         padding: EdgeInsets.all(10),
        //         child:
        Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(15),
          child: new ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ElevatedButton(
                child: new Text('Javatpoint'),
                onPressed: () {/** */},
              ),
              ElevatedButton(
                child: Text('Flutter'),
                onPressed: () {/** */},
              ),
              ElevatedButton(
                child: Text('MySQL'),
                onPressed: () {/** */},
              ),
            ],
          ),
        ),
      ],
    );
    // ));
  }
}
// Button Bar End
