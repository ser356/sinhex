import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:image_picker/image_picker.dart';
import 'hex.dart';
import 'candidatescreen.dart';

class StartViewScreen extends StatefulWidget {
  const StartViewScreen({Key? key});
  @override
  State<StartViewScreen> createState() => _StartViewScreenState();
}

class _StartViewScreenState extends State<StartViewScreen> {
  @override
  void initState() {
    super.initState();
    // Aquí puedes cargar la lista de imágenes desde algún lugar
    // y asignarla a la variable de estado _imageList
  }

  @override
  Widget build(BuildContext context) {
    return StartViewWidget();
  }
}

class StartViewWidget extends StatefulWidget {
  const StartViewWidget({Key? key});

  @override
  State<StatefulWidget> createState() => _StartViewWidgetState();
}

class _StartViewWidgetState extends State<StartViewWidget> {
  _StartViewWidgetState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          /*
        Creamos para la AppBar de la parte superior de arriba..
        */
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
                        Image.network("https://i.imgur.com/BoN9kdC.png").image,
                  ),
                ),
              ),
            ],
          ),
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
                  height: 300,
                  child: Card(
                    elevation: 10,
                    child: SuperiorWidget(),
                  ),
                ),
              ),
              ResponsiveRowColumnItem(
                  child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  height: 170,
                  child: Card(
                    elevation: 10,
                    child: InferiorWidget(),
                  ),
                ),
              ))
            ],
          ),
        ));
  }
}

class InferiorWidget extends StatefulWidget {
  final List<Widget>? imageList;

  const InferiorWidget({this.imageList});

  @override
  State<InferiorWidget> createState() => _InferiorWidgetState();
}

class _InferiorWidgetState extends State<InferiorWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: double.infinity,
      child: Center(
        child: SizedBox(
          child: ResponsiveRowColumn(
            columnMainAxisAlignment: MainAxisAlignment.center,
            layout: ResponsiveRowColumnType.COLUMN,
            children: [
              ResponsiveRowColumnItem(
                child: widget.imageList == null
                    ? Text("No hay imagenes disponibles")
                    : widget.imageList![0],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SuperiorWidget extends StatefulWidget {
  const SuperiorWidget({super.key, imageList});

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
              padding: const EdgeInsets.only(top: 0, bottom: 220.0, left: 10),
              child: FittedBox(
                alignment: Alignment.topLeft,
                fit: BoxFit.none,
                child: Text(
                  "Proyectos",
                  style: TextStyle(color: "65928A".toColor(), fontSize: 25),
                ),
              ),
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 2,
          columnFlex: 2,
          rowFit: FlexFit.tight,
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 150.0, right: 10),
            child: FittedBox(
              alignment: Alignment.topRight,
              fit: BoxFit.none,
              child: InkWell(
                //disable hover effect

                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent),
                onTap: () async {
                  selectImage();
                  setState(() {});
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 5, bottom: 150.0, left: 10),
                  child: FittedBox(
                    fit: BoxFit.none,
                    child: RichText(
                      text: TextSpan(
                        text: 'Añadir',
                        style:
                            TextStyle(color: '012016'.toColor(), fontSize: 25),
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.add,
                              color: "65928A".toColor(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
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
                      print(path);
                      if (path != '') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CandidateScreen(
                              objeto: path,
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('No se selecciono una imagen.'),
                          ),
                        );
                      }
                    });
                  },
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: Text("Camara"),
                  onTap: () async {
                    path = await openCamera();
                    setState(() {
                      print(path);
                      if (path != '') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CandidateScreen(
                              objeto: path,
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('No se selecciono una imagen.'),
                          ),
                        );
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<String> openGallery() async {
    final XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }

  Future<String> openCamera() async {
    final XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }
}
