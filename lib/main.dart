import 'package:flutter/material.dart';
import 'dart:math';

main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
          Scaffold(body: (HomePage()), backgroundColor: Colors.lightBlue[800]),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageContainer();
  }
}

class HomePageContainer extends State<HomePage> {
  List<String> colorSet = ['Azul', 'Rosa', 'Amarelo'];
  Map<int, dynamic> cores = {
    0: Colors.lightBlue[200],
    1: Colors.pinkAccent[200],
    2: Colors.yellow
  };

  Random random = new Random();

  int index = 0;
  int iconIndex = 0;

  void changeIndex() {
    setState(() {
      index = random.nextInt(3);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        Container(
          padding:
              const EdgeInsets.symmetric(vertical: 150.0, horizontal: 20.0),
        ),
        ListTile(
          title: Center(
            child: Text(
              colorSet[index],
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        ListTile(
          title: Center(
              child: GestureDetector(
            child:
                Icon(Icons.autorenew_rounded, size: 200, color: cores[index]),
            onTap: () {
              changeIndex();
            },
          )),
        )
      ],
    );
  }
}
