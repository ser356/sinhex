import "package:flutter/material.dart";
import 'package:image_picker/image_picker.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sinhex/accountsettings.dart';
import 'hex.dart';
import 'model/dataHandler.dart';

var flag = false;
var dh = DataHandler();
var path = '';

class PfpScreen extends StatefulWidget {
  const PfpScreen({Key? key});

  @override
  State<PfpScreen> createState() => _PfpScreenState();
}

class _PfpScreenState extends State<PfpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: '222222'.toColor(),
        title: Text(
          "Cambiar Foto de Perfil",
          style: TextStyle(color: '6C928A'.toColor()),
        ),
        leading: BackButton(
          color: '6C928A'.toColor(),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountSettingsScreen()),
            );
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 500.0),
          child: ResponsiveRowColumn(
            columnMainAxisAlignment: MainAxisAlignment.center,
            layout: ResponsiveRowColumnType.COLUMN,
            columnSpacing: 5,
            children: [
              ResponsiveRowColumnItem(
                child: CircleAvatar(
                    radius: 100,
                    backgroundImage: Image.asset(dh.defaultpfp).image),
              ),
              ResponsiveRowColumnItem(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: '65928A'.toColor()),
                onPressed: () async {
                  selectImage();
                  setState(() {});
                },
                child: Text(
                  "Cambiar Foto de Perfil",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ))
            ],
          ),
        ),
      ),
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
      flag = true;
      dh.setDefaultpfp(file.path);

      return file.path;
    } else {
      return '';
    }
  }

  Future<String> openCamera() async {
    final XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 10);
    if (file != null) {
      flag = true;
      dh.setDefaultpfp(file.path);
      return file.path;
    } else {
      return '';
    }
  }
}
