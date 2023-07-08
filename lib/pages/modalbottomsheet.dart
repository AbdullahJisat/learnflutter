import 'package:flutter/material.dart';

class ModalBottomSheet extends StatefulWidget {
  const ModalBottomSheet({super.key});

  @override
  State<ModalBottomSheet> createState() => _ModalBottomSheetState();
}

class _ModalBottomSheetState extends State<ModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 700,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('One'),
                          subtitle: Text('This is One'),
                          trailing: Icon(Icons.access_alarm),
                        ),
                        ListTile(
                          title: Text('Two'),
                          subtitle: Text('This is Two'),
                          trailing: Icon(Icons.access_alarm),
                        ),
                        ListTile(
                          title: Text('Three'),
                          subtitle: Text('This is Three'),
                          trailing: Icon(Icons.access_alarm),
                        ),
                        ListTile(
                          title: Text('Four'),
                          subtitle: Text('This is Four'),
                          trailing: Icon(Icons.access_alarm),
                        ),
                        ListTile(
                          title: Text('Five'),
                          subtitle: Text('This is Five'),
                          trailing: Icon(Icons.access_alarm),
                        ),
                        ListTile(
                          title: Text('Six'),
                          subtitle: Text('This is Six'),
                          trailing: Icon(Icons.access_alarm),
                        ),
                        ListTile(
                          title: Text('Seven'),
                          subtitle: Text('This is Seven'),
                          trailing: Icon(Icons.access_alarm),
                        ),
                        ListTile(
                          title: Text('Three'),
                          subtitle: Text('This is Three'),
                          trailing: Icon(Icons.access_alarm),
                        ),
                        ListTile(
                          title: Text('Three'),
                          subtitle: Text('This is Three'),
                          trailing: Icon(Icons.access_alarm),
                        ),
                        ListTile(
                          title: Text('Three'),
                          subtitle: Text('This is Three'),
                          trailing: Icon(Icons.access_alarm),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Text('click me'),
        ),
      ),
    );
  }
}
