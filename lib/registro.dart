import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sinhex/main.dart';
import 'package:sinhex/startview.dart';
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
    return SingleChildScrollView(
      child: (Center(
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          SizedBox(
              child: SvgPicture.asset(
            'assets/eye.svg',
            color: Color.fromRGBO(26, 97, 73, 100),
            fit: BoxFit.scaleDown,
          )),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 420,
            width: double.infinity,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              color: Color.fromRGBO(255, 255, 255, 0.612),
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: FormWidget(),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}

class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            autocorrect: true,
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            autocorrect: true,
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            autocorrect: true,
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            autocorrect: true,
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
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Center(
              child: ButtonWidget(),
            ),
          ],
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
    return (SizedBox(
      child: Row(children: [
        SizedBox(
          width: 75,
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
              child: Text('Volver Atrás')),
        ),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => StartViewScreen()));
            },
            child: Text('Registrarse'))
      ]),
    ));
  }
}
