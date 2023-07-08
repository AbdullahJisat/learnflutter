import 'package:flutter/material.dart';

void main() {
  runApp(const MainSliver21());
}

class MainSliver21 extends StatefulWidget {
  const MainSliver21({super.key});

  @override
  State<MainSliver21> createState() => _MainSliver21State();
}

class _MainSliver21State extends State<MainSliver21> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              backgroundColor: Colors.red,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Expanded"),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  addDetails("One", "This is One"),
                  addDetails("Two", "This is Two"),
                  addDetails("Three", "This is Three"),
                  addDetails("Four", "This is Four"),
                  addDetails("Five", "This is Five"),
                  addDetails("Six", "This is Six"),
                  addDetails("Seven", "This is Seven"),
                  addDetails("Eight", "This is Eight"),
                  addDetails("Nine", "This is Nine"),
                  addDetails("Ten", "This is Ten"),
                  addDetails("Eleven", "This is Eleven"),
                  addDetails("Tweleve", "This is Tweleve"),
                  addDetails("Thirteen", "This is Thirteen"),
                  addDetails("Fourteen", "This is Fourteen"),
                  addDetails("Fifteen", "This is Fifteen"),
                  addDetails("Sixteen", "This is Sixteen"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget addDetails(
  String name,
  String description,
) {
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(
        name[0],
      ),
    ),
  );
}
