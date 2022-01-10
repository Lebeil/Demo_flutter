import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _score = 0;
  var _afficherLeBouton = false;
  void _plusButtonClicked() {
    setState(() {
      _score = _score + 1;
    });
  }

  void _toggleButton() {
    setState(() {
      _afficherLeBouton = !_afficherLeBouton;
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
            icon: const Icon(Icons.plus_one)),
        ElevatedButton.icon(onPressed: _plusButtonClicked, icon: const Icon(Icons.plus_one), label: const Text("Ajouter un bouton")),
        OutlinedButton(onPressed: _toggleButton, child: Text((_afficherLeBouton ? "Masquer " : "Afficher ") + "le bouton") //ternaire
        ),
        if(_afficherLeBouton)
          TextButton(
            onPressed: _plusButtonClicked,
            child: const Text('Bouton'),
          )
      ],
      ),
    );
  }
}
