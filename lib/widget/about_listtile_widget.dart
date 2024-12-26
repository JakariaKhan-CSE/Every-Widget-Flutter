import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutListtileWidget extends StatefulWidget {
  const AboutListtileWidget({super.key});

  @override
  State<AboutListtileWidget> createState() => _AboutListtileWidgetState();
}

class _AboutListtileWidgetState extends State<AboutListtileWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AboutListTile(
icon: Icon(Icons.info),
        applicationIcon: FlutterLogo(),
        applicationLegalese: 'Legalese',
        applicationName: 'Flutter App',
        applicationVersion: 'version 1.0.0',
        aboutBoxChildren: [
          SizedBox(height: 10,),
          Text('This is a text created by Jakaria'),
        ],
      ),
    );
  }
}
