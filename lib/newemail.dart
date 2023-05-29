import "package:flutter/material.dart";
import "package:responsive_framework/responsive_framework.dart";
import "package:sinhex/accountsettings.dart";
import 'hex.dart';
import "main.dart";

class NewEmailScreen extends StatefulWidget {
  const NewEmailScreen({Key? key});
  @override
  State<NewEmailScreen> createState() => _NewEmailState();
}

class _NewEmailState extends State<NewEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: '222222'.toColor(),
          title: Text(
            "Nuevo Correo Electrónico",
            style: TextStyle(color: '6C928A'.toColor()),
          ),
          leading: BackButton(
            color: '6C928A'.toColor(),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AccountSettingsScreen()),
              );
            },
          ),
        ),
        body: Center(
          child: SizedBox(
            height: 300,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ResponsiveRowColumn(
                columnCrossAxisAlignment: CrossAxisAlignment.center,
                columnPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                columnSpacing: 15,
                layout: ResponsiveRowColumnType.COLUMN,
                children: [
                  ResponsiveRowColumnItem(
                    child: SizedBox(
                      height: 10,
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: TextFormField(
                      autocorrect: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        labelText: 'Correo Electrónico',
                        hintText: 'Tu Correo',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: TextFormField(
                      autocorrect: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        labelText: 'Nuevo Correo Electrónico',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.ROW,
                      children: [
                        ResponsiveRowColumnItem(child: ButtonWidget()),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: (ResponsiveRowColumn(
          rowSpacing: 0.5,
          rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
          layout: ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              rowFit: FlexFit.loose,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: '#012016'.toColor(),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccountSettingsScreen()));
                  },
                  child: Text(
                    'Cancelar',
                    textScaleFactor: 1,
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ),
            ResponsiveRowColumnItem(
              rowFit: FlexFit.loose,
              child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Correo cambiado correctamente.')));
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: '#65928A'.toColor(),
                  ),
                  child: Text(
                    'Cambiar Correo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      locale: Locale.fromSubtags(languageCode: 'es'),
                      color: '#FFFFFF'.toColor(),
                    ),
                  )),
            )
          ])),
    );
  }
}
