import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _score = 0;
  void _plusButtonClicked() {
    setState(() {
      _score = _score + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Text('Score: $_score'),
        IconButton(
            onPressed: _plusButtonClicked,
            iconSize: 50,
            icon: const Icon(Icons.plus_one))
      ],)
    );
  }
}
