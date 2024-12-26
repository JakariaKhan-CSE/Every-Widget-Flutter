import 'package:flutter/material.dart';

class AboutDialogWidget extends StatefulWidget {
  const AboutDialogWidget({super.key});

  @override
  State<AboutDialogWidget> createState() => _AboutDialogWidgetState();
}

class _AboutDialogWidgetState extends State<AboutDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Show About Dialog'),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AboutDialog(
              applicationIcon: FlutterLogo(),
              applicationLegalese: 'Legalese',
              applicationName: 'Flutter App',
              applicationVersion: 'version 1.0.0',
              children: [
                SizedBox(height: 10,),
                Text('This is a text created by Jakaria'),
                Text('This is a 2nd text created by Jakaria'),

              ],
            ),
          );
        },
      ),
    );
  }
}
