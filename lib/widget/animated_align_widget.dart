import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatefulWidget {
  const AnimatedAlignWidget({super.key});

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (){
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          height: 250,
          width: double.infinity,
          color: Colors.blueGrey,
          child: AnimatedAlign(
              alignment: isSelected ? Alignment.topRight : Alignment.bottomLeft,
              duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 60,),
          ),
        ),
      ),
    );
  }
}
