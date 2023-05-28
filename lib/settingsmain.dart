import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:responsive_framework/responsive_row_column.dart";
import "package:sinhex/hex.dart";
import "package:sinhex/startviewscreen.dart";
import 'accountsettings.dart';

class SettingsMain extends StatelessWidget {
  SettingsMain({Key? key});
  final data = [
    "Opciones de la Cuenta",
    "Cambia tu correo electrónico, contraseña, etc",
    "FAQ",
    "¿Tienes dudas? ¡Resuélvelas todas!",
    "Tutorial",
    "Iniciación y primeros pasos en la aplicación",
    "Salir"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  height: 270,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      elevation: 10,
                      child: ListView.separated(
                          itemCount: 7,
                          separatorBuilder: (BuildContext context, int index) =>
                              Divider(height: 1, color: Colors.transparent),
                          itemBuilder: (BuildContext context, int index) {
                            return Wrap(
                              children: [
                                Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                    child: GestureDetector(
                                      onTap: () {
                                        if (index == 0) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AccountSettingsScreen()),
                                          );
                                        } else if (index == 6) {
                                          SystemChannels.platform.invokeMethod(
                                              'SystemNavigator.pop');
                                        }
                                      },
                                      child: RichText(
                                          text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              child: Icon(miasigner(index),
                                                  color: '105445'.toColor()),
                                            ),
                                          ),
                                          TextSpan(text: data[index]),
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
            ]));
  }
}
