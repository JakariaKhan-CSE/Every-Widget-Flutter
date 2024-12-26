import 'package:every_widget_flutter/widget/about_dialog_widget.dart';
import 'package:every_widget_flutter/widget/about_listtile_widget.dart';
import 'package:every_widget_flutter/widget/alert_dialog_widget.dart';
import 'package:every_widget_flutter/widget/align_widget.dart';
import 'package:every_widget_flutter/widget/animated_align_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Every Widget Flutter'),elevation: 15,centerTitle: true,),

      body: AnimatedAlignWidget()
    );
  }
}
