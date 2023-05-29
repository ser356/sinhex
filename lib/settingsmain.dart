import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:responsive_framework/responsive_row_column.dart";
import "package:sinhex/hex.dart";
import "package:sinhex/startviewscreen.dart";
import "package:url_launcher/url_launcher.dart";
import 'accountsettings.dart';

final Uri faq = Uri.parse("https://github.com/ser356/sinhex/main/");
final Uri tutorial = Uri.parse("https://youtu.be/ofFsVAbTR2o");
Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw "Could not launch $url";
  }
}

class SettingsMain extends StatelessWidget {
  SettingsMain({Key? key});
  final data = [
    "Opciones de la Cuenta",
    "Cambiar e-mail, contraseña, etc.",
    "FAQ",
    "¿Tienes dudas? ¡Resuélvelas todas!",
    "Tutorial",
    "Primeros pasos en la aplicación",
    "Salir"
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => StartViewScreen()));
        return false;
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: '222222'.toColor(),
            title: Text(
              "Ajustes",
              style: TextStyle(color: '6C928A'.toColor()),
            ),
            leading: BackButton(
              color: '6C928A'.toColor(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StartViewScreen()),
                );
              },
            ),
          ),
          body: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.COLUMN,
              children: [
                ResponsiveRowColumnItem(
                  child: SizedBox(
                    height: 290,
                    width: double.maxFinite,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        elevation: 10,
                        child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 7,
                            separatorBuilder: (BuildContext context,
                                    int index) =>
                                Divider(height: 1, color: Colors.transparent),
                            itemBuilder: (BuildContext context, int index) {
                              return Wrap(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 7, top: 8),
                                      child: GestureDetector(
                                        onTap: () async {
                                          if (index == 0) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AccountSettingsScreen()),
                                            );
                                          }
                                          if (index == 2) {
                                            _launchUrl(faq);
                                          }
                                          if (index == 4) {
                                            _launchUrl(tutorial);
                                          }
                                          if (index == 6) {
                                            SystemChannels.platform
                                                .invokeMethod(
                                                    'SystemNavigator.pop');
                                          }
                                        },
                                        child: RichText(
                                            text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(0.5),
                                                child: Icon(miasigner(index),
                                                    color: '105445'.toColor()),
                                              ),
                                            ),
                                            TextSpan(
                                              text: data[index],
                                            ),
                                          ],
                                          style: TextStyle(
                                            fontSize: data[index].length <= 21
                                                ? 25
                                                : 18,
                                            color: colorswitcher(index),
                                          ),
                                        )),
                                      ))
                                ],
                              );
                            }),
                      ),
                    ),
                  ),
                )
              ])),
    );
  }
}
