import 'package:flutter/material.dart';
import 'package:sinhex/pfpsettings.dart';
import 'package:sinhex/settingsmain.dart';
import 'hex.dart';
import 'package:responsive_framework/responsive_framework.dart';

final account = [
  "Lenguaje de la App\n",
  "Cambiar Foto de Perfil\n",
  "Cambiar Correo Electrónico\n",
  "Cambiar Contraseña\n"
];

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: '222222'.toColor(),
        title: Text(
          "Ajustes de la cuenta",
          style: TextStyle(color: '6C928A'.toColor()),
        ),
        leading: BackButton(
          color: '6C928A'.toColor(),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsMain()),
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
                        itemCount: 4,
                        separatorBuilder: (BuildContext context, int index) =>
                            Divider(height: 1, color: Colors.transparent),
                        itemBuilder: (BuildContext context, int index) {
                          return Wrap(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (index == 1) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PfpScreen()),
                                        );
                                      }
                                    },
                                    child: RichText(
                                        text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Icon(miasigner2(index),
                                                color: '105445'.toColor()),
                                          ),
                                        ),
                                        TextSpan(text: account[index]),
                                      ],
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: colorswitcher2(index),
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
          ]),
    );
  }
}
