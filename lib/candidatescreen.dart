import 'package:flutter/material.dart';

class CandidateScreen extends StatefulWidget {
  final String objeto;
  CandidateScreen({Key? key, required this.objeto}) : super(key: key);

  @override
  State<CandidateScreen> createState() => _MiWidgetState();
}

class _MiWidgetState extends State<CandidateScreen> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
      RichText(text: TextSpan(text: "Hola")),
      Image.asset(widget.objeto, height: 100, width: 100)
    ]));
  }
}
