import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'hex.dart';

class StartViewScreen extends StatefulWidget {
  @override
  State<StartViewScreen> createState() => _StartViewScreenState();
}

class _StartViewScreenState extends State<StartViewScreen> {
  @override
  Widget build(BuildContext context) {
    return const StartViewWidget();
  }
}

class StartViewWidget extends StatelessWidget {
  const StartViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: "222222".toColor(),
          title: ResponsiveRowColumn(
              rowMainAxisAlignment: MainAxisAlignment.end,
              layout: ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 2,
                  columnFlex: 2,
                  child: InkWell(
                    onTap: () => {},
                    child: Container(
                      // set circular shape
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/vector-premium/hola-hola-letras-frase-aisladas-blanco-vector-diseno-efecto-texto-colorido-texto-o-inscripciones-ingles-diseno-moderno-creativo-tiene-colores-rojo-naranja-amarillo_7280-7768.jpg?w=2000"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
        body: const Center(
            child: ResponsiveRowColumn(
                columnSpacing: 40,
                layout: ResponsiveRowColumnType.COLUMN,
                children: [
              ResponsiveRowColumnItem(
                  rowFlex: 2,
                  columnFlex: 2,
                  rowFit: FlexFit.tight,
                  child: SizedBox(
                    height: 200,
                    child: Card(
                      child: SuperiorWidget(),
                    ),
                  )),
              ResponsiveRowColumnItem(
                  child: SizedBox(
                      height: 360, child: Card(child: WidgetListaProyectos())))
            ])));
  }
}

class WidgetListaProyectos extends StatefulWidget {
  const WidgetListaProyectos({super.key});

  @override
  State<WidgetListaProyectos> createState() => _WidgetListaProyectosState();
}

class _WidgetListaProyectosState extends State<WidgetListaProyectos> {
  @override
  Widget build(BuildContext context) {
    return buildListaProyectosVacia();
  }

  ListView buildListaProyectosVacia() {
    return ListView.builder(
      itemCount: 0,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item $index'),
        );
      },
    );
  }
}

class SuperiorWidget extends StatelessWidget {
  const SuperiorWidget({super.key});

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
                    padding:
                        const EdgeInsets.only(top: 5, bottom: 150.0, left: 10),
                    child: FittedBox(
                      alignment: Alignment.topLeft,
                      fit: BoxFit.none,
                      child: Text(
                        "Proyectos",
                        style:
                            TextStyle(color: "65928A".toColor(), fontSize: 18),
                      ),
                    ),
                  ))),
          ResponsiveRowColumnItem(
              rowFlex: 2,
              columnFlex: 2,
              rowFit: FlexFit.tight,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 5, bottom: 150.0, right: 10),
                child: FittedBox(
                    alignment: Alignment.topRight,
                    fit: BoxFit.none,
                    child: InkWell(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      onTap: () {
                        //buildListaProyectos();
                      },
                      child: RichText(
                        text: TextSpan(
                            text: 'Añadir',
                            style: TextStyle(
                                color: '012016'.toColor(), fontSize: 18),
                            children: [
                              WidgetSpan(
                                  child: Icon(
                                Icons.add,
                                color: "65928A".toColor(),
                              ))
                            ]),
                      ),
                    )),
              ))
        ]);
  }
}
