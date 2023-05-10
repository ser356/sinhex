import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sinhex/hex.dart';
import 'package:sinhex/main.dart';
import 'package:sinhex/login.dart';
import 'package:responsive_framework/responsive_framework.dart';

//Registro Screen

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegistroWidget(),
    );
  }
}

class RegistroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardComponentWidget();
  }
}

class CardComponentWidget extends StatelessWidget {
  const CardComponentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return (SingleChildScrollView(
      child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.COLUMN,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 2,
              child: SizedBox(
                height: 50,
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 2,
              child: SizedBox(
                  child: SvgPicture.asset(
                'assets/eye.svg',
                color: Color.fromRGBO(26, 97, 73, 100),
                fit: BoxFit.scaleDown,
              )),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 2,
              child: SizedBox(
                height: 50,
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 2,
              child: Card(
                margin: ResponsiveWrapper.of(context).isDesktop
                    ? EdgeInsets.symmetric(vertical: 10, horizontal: 450)
                    : EdgeInsets.all(20),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)),
                color: '#FFFFFF'.toColor(),
                child: FormWidget(),
              ),
            ),
          ]),
    ));
  }
}

class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (ResponsiveRowColumn(
      columnPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      columnSpacing: 15,
      layout: ResponsiveRowColumnType.COLUMN,
      children: [
        ResponsiveRowColumnItem(
          child: SizedBox(
            height: 10,
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 2,
          child: TextFormField(
            autocorrect: true,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              labelText: 'Nombre',
              hintText: 'Tu Nombre',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 2,
          child: TextFormField(
            autocorrect: true,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              labelText: 'Apellidos',
              hintText: 'Tus Apellidos',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
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
              labelText: 'Contraseña',
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
              labelText: 'Confirmar Contraseña',
              hintText: 'Vuelve a escribir tu contraseña',
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
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
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
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: '#65928A'.toColor(),
                  ),
                  child: Text(
                    'Empezar',
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
