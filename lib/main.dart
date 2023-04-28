import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //para que no entre en modo rotacion
import 'package:flutter_svg/flutter_svg.dart';
import 'registro.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sinhex',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 38, 135, 107),
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 38, 135, 107)),
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainWidget(),
    );
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(), //para que no se mueva
      crossAxisCount: 1,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: SizedBox(
            child: SvgPicture.asset(
              'assets/eye.svg',
              color: Color.fromRGBO(26, 97, 73, 100),
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 1, 32, 22)),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegistroScreen()));
                },
                child: const Text('¡Empezemos!',
                    style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                width: 80,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 101, 146, 138)),
                ),
                onPressed: () {},
                child: const Text('Iniciar sesión',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
