import 'package:flutter/material.dart';
import 'package:note_app_demo/utilities/scaffold.dart';
import 'package:note_app_demo/screens/upload_note.dart';

class DISPLAY extends StatefulWidget {
  const DISPLAY({Key? key}) : super(key: key);

  @override
  State<DISPLAY> createState() => _DISPLAYState();
}

class _DISPLAYState extends State<DISPLAY> {
  @override
  Widget build(BuildContext context) {
    return SCAFFOLD(
      BODY: Container(
        child: Column(),
      ),
    );
  }
}
