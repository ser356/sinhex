import 'dart:io';

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:image_picker/image_picker.dart';
import 'hex.dart';
import 'candidatescreen.dart';

class StartViewScreen extends StatefulWidget {
  const StartViewScreen({super.key});
  @override
  State<StartViewScreen> createState() => _StartViewScreenState();
}

class _StartViewScreenState extends State<StartViewScreen> {
  @override
  Widget build(BuildContext context) {
    return StartViewWidget();
  }
}

class StartViewWidget extends StatefulWidget {
  StartViewWidget({super.key});

  @override
  State<StatefulWidget> createState() => _StartViewWidgetState();
}

class _StartViewWidgetState extends State<StartViewWidget> {
  _StartViewWidgetState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: "222222".toColor(),
          title: ResponsiveRowColumn(
              rowMainAxisAlignment: MainAxisAlignment.end,
              layout: ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 2,
                  columnFlex: 2,
                  rowFit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      // set circular shape

                      radius: 20,
                      // set background image and its fit

                      backgroundImage:
                          Image.network("https://i.imgur.com/BoN9kdC.png")
                              .image,
                    ),
                  ),
                ),
              ]),
        ),
        body: const Center(
            child: ResponsiveRowColumn(
                columnMainAxisAlignment: MainAxisAlignment.center,
                columnSpacing: 20,
                layout: ResponsiveRowColumnType.COLUMN,
                children: [
              ResponsiveRowColumnItem(
                  rowFlex: 2,
                  columnFlex: 2,
                  rowFit: FlexFit.tight,
                  child: SizedBox(
                    height: 170,
                    child: Card(
                      child: SuperiorWidget(listaDeProyectos: []),
                    ),
                  )),
              ResponsiveRowColumnItem(
                  rowFlex: 2,
                  columnFlex: 2,
                  rowFit: FlexFit.tight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: SizedBox.expand(
                        child: Card(
                      elevation: 10,
                      child: InferiorWidget(
                        recientes: [],
                      ),
                    )),
                  ))
            ])));
  }
}

class InferiorWidget extends StatefulWidget {
  const InferiorWidget({@required recientes});

  @override
  State<InferiorWidget> createState() => _InferiorWidgetState();
}

class _InferiorWidgetState extends State<InferiorWidget> {
  @override
  Widget build(BuildContext context) {
    return (Center());
  }
}

class SuperiorWidget extends StatefulWidget {
  final List<Image> listaDeProyectos;
  const SuperiorWidget({required this.listaDeProyectos});

  @override
  State<SuperiorWidget> createState() => _SuperiorWidgetState();
}

class _SuperiorWidgetState extends State<SuperiorWidget> {
  String path = "";
  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
        rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
        layout: ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
              rowFlex: 2,
              columnFlex: 2,
              child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 5, bottom: 150.0, left: 10),
                    child: FittedBox(
                      alignment: Alignment.topLeft,
                      fit: BoxFit.none,
                      child: Text(
                        "Proyectos",
                        style:
                            TextStyle(color: "65928A".toColor(), fontSize: 18),
                      ),
                    ),
                  ))),
          ResponsiveRowColumnItem(
              rowFlex: 2,
              columnFlex: 2,
              rowFit: FlexFit.tight,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 5, bottom: 150.0, right: 10),
                child: FittedBox(
                  alignment: Alignment.topRight,
                  fit: BoxFit.none,
                  child: InkWell(
                    onTap: () {
                      selectImage();
                    },
                    child: RichText(
                      text: TextSpan(
                          text: 'Añadir',
                          style: TextStyle(
                              color: '012016'.toColor(), fontSize: 18),
                          children: [
                            WidgetSpan(
                                child: Icon(
                              Icons.add,
                              color: "65928A".toColor(),
                            ))
                          ]),
                    ),
                  ),
                ),
              ))
        ]);
  }

  Future selectImage() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 10,
            title: Text("Selecciona una imagen"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Galeria"),
                    onTap: () async {
                      path = await openGallery();
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CandidateScreen(objeto: path)));
                      });
                    },
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  GestureDetector(
                    child: Text("Camara"),
                    onTap: () async {
                      path = await openCamera();
                      setState(() {
                        if (path != '') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CandidateScreen(
                                        objeto: path,
                                      )));
                        } else {
                          SnackBar(
                              content:
                                  Text("No se ha seleccionado ninguna imagen"));
                        }
                      });
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  openGallery() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }

  openCamera() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }
}
