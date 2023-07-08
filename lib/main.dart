import 'dart:math';

import 'package:blog/iconview.dart';
import 'package:blog/main3alertdialog28.dart';
import 'package:blog/mainagain.dart';
import 'package:blog/mainalertdialog28.dart';
import 'package:blog/mainappbarbutton5.dart';
import 'package:blog/mainbottomnavbar19.dart';
import 'package:blog/mainbuttons3.dart';
import 'package:blog/maincard15.dart';
import 'package:blog/maincolumn8.dart';
import 'package:blog/maincontainer7.dart';
import 'package:blog/maincurvednavigationbar29.dart';
import 'package:blog/maincustomdialog30.dart';
import 'package:blog/mainexpandedui16.dart';
import 'package:blog/mainfirst4.dart';
import 'package:blog/maingradientcolor23.dart';
import 'package:blog/maingrid.dart';
import 'package:blog/maingridcard20.dart';
import 'package:blog/maingridview15.dart';
import 'package:blog/mainhero18.dart';
import 'package:blog/mainimage13.dart';
import 'package:blog/mainliquid14.dart';
import 'package:blog/mainlisttile11.dart';
import 'package:blog/mainlistviewvertical9.dart';
import 'package:blog/mainmediaquery10.dart';
import 'package:blog/mainmodalbottomsheet27.dart';
import 'package:blog/mainpageview17.dart';
import 'package:blog/mainpositionfloat12.dart';
import 'package:blog/mainproviderfirst24.dart';
import 'package:blog/mainrow8.dart';
import 'package:blog/mainsafearea6.dart';
import 'package:blog/mainscrollhorizontal9.dart';
import 'package:blog/mainsliver21.dart';
import 'package:blog/mainstate24.dart';
import 'package:blog/maintabbar20.dart';
import 'package:blog/maintext.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: My(),
    );
  }
}

class My extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';
    // var widgetArray = [MainListtile11, MainPositionfloat12];
    List<Widget> list = [
      MainText(),
      MainButtons3(),
      MainFirst4(),
      MainAppBarButton5(),
      MainSafearea6(),
      MainContainer7(),
      MainColumn8(),
      MainRow8(),
      MainScrollHorizontal9(),
      MainListviewVertical9(),
      MainMediaquery10(),
      MainListtile11(),
      MainPositionfloat12(),
      MainImage13(),
      MainLiquid14(),
      MainCard15(),
      MainExpandedUI16(),
      MainPageView17(),
      MainHero18(),
      IconView(),
      MainBottomNavbar19(),
      MainTabbar20(),
      MainGridCard20(),
      MainSliver21(),
      MainGradientColor23(),
      MainState24(),
      MainProviderFirst24(),
      MainAgain(),
      MainGrid(),
      // MainImagePicker26()
      MainModalBottomSheet27(),
      MainAlertDialog28(),
      Main3AlertDialog28(),
      MainCurvedNavigationbar29(),
      MainCustomDialog30(),
    ];

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
            children: [
              for (var item in list)
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => item));
                      ;
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
                            item.toString(),
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) => MainText()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainText',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) => MainFirst4()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainFirst4',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) =>
              //               MainAppBarButton5()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainAppBarButton5',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) => MainSafearea6()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainSafearea6',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) => MainContainer7()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainContainer7',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) => MainRow8()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainRow8',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) =>
              //               MainScrollHorizontal9()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainScrollHorizontal9',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) =>
              //               MainListviewVertical9()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainListviewVertical9',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) => MainMediaquery10()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainMediaquery10',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) => MainListtile11()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainListtile11',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) =>
              //               MainPositionfloat12()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainPositionfloat12',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) => MainGridView15()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainGridView15',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) =>
              //               MainBottomNavbar19()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainBottomNavbar19',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) => MainCard15()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainCard15',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (BuildContext context) => MainColumn8()));
              //       ;
              //     },
              //     child: Card(
              //       color:
              //           Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              //               .withOpacity(1.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             'MainColumn8',
              //             style: TextStyle(
              //                 fontSize: 20, fontWeight: FontWeight.w500),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MainGridView15()));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          child: const Text(
            'Navigate to a new screen >>',
            style: TextStyle(fontSize: 24.0),
          ),
          onPressed: () {
            _navigateToNextScreen(context);
          },
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => NewScreen()));
  }
}

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Screen')),
      body: const Center(
        child: Text(
          'This is a new screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
