import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sinhex/hex.dart';
import 'package:sinhex/login.dart';

import 'registro.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  //Set rotation if is MINI

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
      builder: ((context, widget) => ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, widget!),
            breakpoints: const [
              ResponsiveBreakpoint.resize(100, name: 'MINI'),
              ResponsiveBreakpoint.resize(300, name: MOBILE),
              ResponsiveBreakpoint.resize(500, name: TABLET),
              ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
            ],
          )),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
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
    return SafeArea(
      child: SingleChildScrollView(
        child: (ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.center,
            layout: ResponsiveRowColumnType.COLUMN,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 2,
                child: SizedBox(
                  height: 50,
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: SizedBox(
                  child: SvgPicture.asset(
                    'assets/eye.svg',
                    color: Color.fromRGBO(26, 97, 73, 100),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              ResponsiveRowColumnItem(child: SizedBox(height: 400)),
              ResponsiveRowColumnItem(
                  child: ResponsiveRowColumn(
                      rowSpacing: 50,
                      rowMainAxisAlignment: MainAxisAlignment.center,
                      layout: ResponsiveRowColumnType.ROW,
                      children: [
                    ResponsiveRowColumnItem(
                        rowFlex: 1,
                        child: Wrap(children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: '#012016'.toColor(),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegistroScreen()),
                                );
                              },
                              child: Text("Registrarse",
                                  style: TextStyle(color: Colors.white)))
                        ])),
                    ResponsiveRowColumnItem(
                        rowFit: FlexFit.loose,
                        rowFlex: 1,
                        child: Wrap(children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                );
                              },
                              child: Text("Iniciar Sesión")),
                        ]))
                  ]))
            ])),
      ),
    );
  }
}
