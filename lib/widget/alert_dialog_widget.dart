import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({super.key});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: (){
        showDialog(context: context, builder: (context) => AlertDialog(
actions: [
  TextButton(onPressed: (){
    Navigator.pop(context);
  }, child: Text('Close'))
],
          title: Text('Jakaria'),
          contentPadding: EdgeInsets.all(20),
          content: Text('This is the Alert Dialog'),
        ),);
      }, child: Text('Show Alert Dialog')),
    );
  }
}
