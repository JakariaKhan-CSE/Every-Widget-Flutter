import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlignWidget extends StatefulWidget {
  const AlignWidget({super.key});

  @override
  State<AlignWidget> createState() => _AlignWidgetState();
}

class _AlignWidgetState extends State<AlignWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
child: Container(
  height: 120,
  width: double.infinity,
  color: Colors.blueGrey,
  child: Align(
    // this line control widget align
    alignment: Alignment.topRight,  // bottomLeft and others
    child: FlutterLogo(size: 60,),
  ),
),
    );
  }
}
