import 'dart:io';

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'hex.dart';

class CandidateScreen extends StatefulWidget {
  final String objeto;
  CandidateScreen({Key? key, required this.objeto}) : super(key: key);

  @override
  State<CandidateScreen> createState() => _MiWidgetState();
}

class _MiWidgetState extends State<CandidateScreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text(
          "Elección de Candidato",
          style: TextStyle(color: '6C928A'.toColor()),
        ),
        backgroundColor: "222222".toColor(),
        leading: BackButton(
          color: '6C928A'.toColor(),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ResponsiveRowColumn(
        columnMainAxisAlignment: MainAxisAlignment.center,
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            child: Center(
              child: Card(
                  child: CandidateWidget(
                objeto: widget.objeto,
              )),
            ),
          ),
        ],
      ),
    ));
  }
}

class CandidateWidget extends StatefulWidget {
  final String objeto;
  CandidateWidget({Key? key, required this.objeto}) : super(key: key);

  @override
  State<CandidateWidget> createState() => _CandidateWidgetState();
}

class _CandidateWidgetState extends State<CandidateWidget> {
  _CandidateWidgetState();

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.COLUMN,
      columnSpacing: 20,
      columnPadding: EdgeInsets.all(20),
      children: [
        ResponsiveRowColumnItem(
            child: Text(
          "Candidato",
          style: TextStyle(
            color: '6C928A'.toColor(),
            fontSize: 20,
          ),
        )),
        ResponsiveRowColumnItem(
            child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.file(
            File(
              widget.objeto,
            ),
            fit: BoxFit.contain,
            height: 200,
          ),
        )),
      ],
    );
  }
}
