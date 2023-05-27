import 'dart:io';

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sinhex/startviewscreen.dart';
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
        columnPadding: EdgeInsets.all(20),
        columnMainAxisAlignment: MainAxisAlignment.center,
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            child: Center(
              child: Card(
                  elevation: 10,
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
    List<Widget> imageList = [];
    imageList.add(Image.asset(widget.objeto));
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.COLUMN,
      columnSpacing: 10,
      columnPadding: EdgeInsets.all(10),
      children: [
        ResponsiveRowColumnItem(
            child: Text(
          "Imagen a Procesar",
          style: TextStyle(
            color: '012016'.toColor(),
            fontSize: 30,
            decorationThickness: 10,
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
            width: 200,
            height: 300,
          ),
        )),
        ResponsiveRowColumnItem(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StartViewScreen()),
              );
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Procesado Correctamente"),
                duration: Duration(seconds: 2),
              ));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: '012016'.toColor(),
            ),
            child: Text(
              "Procesar",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Proceso Cancelado"),
                  duration: Duration(seconds: 2),
                ));
              },
              child: Text("Cancelar")),
        ])),
      ],
    );
  }
}
