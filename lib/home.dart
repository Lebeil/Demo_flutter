import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _plusButtonClicked() {
    print("Hello !");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        IconButton(onPressed: _plusButtonClicked, icon: const Icon(Icons.plus_one))
      ],)
    );
  }
}
