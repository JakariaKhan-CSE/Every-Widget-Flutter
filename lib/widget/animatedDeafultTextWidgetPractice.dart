import 'package:flutter/material.dart';

class Animateddeafulttextwidgetpractice extends StatefulWidget {
  const Animateddeafulttextwidgetpractice({super.key});

  @override
  State<Animateddeafulttextwidgetpractice> createState() => _AnimateddeafulttextwidgetpracticeState();
}

class _AnimateddeafulttextwidgetpracticeState extends State<Animateddeafulttextwidgetpractice> {
  // initially ai gulo show korbe
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [
    SizedBox(
      height: 120,
      child: AnimatedDefaultTextStyle(
          child: const Text('Jakaria'),
          style: TextStyle(
            fontSize: _fontSize,
            color: _color,
            fontWeight: FontWeight.bold
          ),
          duration: const Duration(milliseconds: 300)),

    ),
    TextButton(onPressed: (){
      setState(() {
        _fontSize = _first ? 90 : 60;
        _color = _first ? Colors.blue : Colors.red;
        _first = !_first;
      });
    }, child: Text('Switch'))
  ],
),
    );
  }
}
