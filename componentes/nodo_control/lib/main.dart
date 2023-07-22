// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, prefer_const_declarations, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Detalles Camionero',
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 73, 118, 232),
        scaffoldBackgroundColor: Color.fromARGB(255, 247, 249, 251),
        useMaterial3: false,
      ),
      home: Cards(),
    );
  }
}

class Cards extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CardsState();
  }
}

class CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alejando Perez',
          style: GoogleFonts.raleway(
            textStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: nodooControl(),
      /* Column(
        children: [
          nodooControl(),
          tarifaServicio(),
        ],
      ), */
    );
  }
}

Widget nodooControl() {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      //propiedades del botón)
      backgroundColor: Color.fromARGB(255, 32, 226, 165),
      elevation: 5.0,
      padding: EdgeInsets.all(5.0),
      maximumSize: Size(100, 50));


  return ListView(
    padding: const EdgeInsets.all(20.0),
    children: <Widget>[
      Text(
        'Nodoo Control',
        style: GoogleFonts.raleway(
          textStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
      Card(
          elevation: 5.0,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                        child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.people_outline_outlined,
                            color: Color.fromARGB(255, 170, 197, 242),
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '200+',
                              style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                color: Color.fromARGB(255, 32, 78, 226),
                                fontSize: 24,
                              )),
                            ),
                            Text('Conexiones',
                                style: GoogleFonts.raleway(
                                    textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                )))
                          ],
                        ),
                      ],
                    )),
                  ),
                  Expanded(
                      child: Container(
                          child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.local_shipping_outlined,
                          color: Color.fromARGB(255, 170, 197, 242),
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                      Column(
                        children: <Widget>[
                          Text('500+',
                              style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                color: Color.fromARGB(255, 32, 78, 226),
                                fontSize: 24,
                              )),
                              textAlign: TextAlign.left),
                          Text('Fletes Hechos',
                              style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              )))
                        ],
                      )
                    ],
                  ))),
                ],
              ),
              Divider(
                indent: 15.0,
                endIndent: 15.0,
                color: Color.fromARGB(255, 150, 150, 150),
              ),
              Row(
                children: <Widget>[
                  Container(
                      child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.folder_shared_outlined,
                          color: Color.fromARGB(255, 150, 150, 150),
                          size: 20,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        'Validación',
                        style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                    ],
                  )),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 204, 255, 230  ),
                    ),
                    height: 20,
                    width: 50,
                    child: Row(
                      children: [
                        Icon(
                          Icons.lock_outline,
                          color: Color.fromARGB(255, 0, 102, 53),
                          size: 15,
                        ),
                        Text(
                          ' 5/5',
                          style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                            color: Color.fromARGB(255, 0, 102, 53),
                            fontSize: 15,
                          )),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Color.fromARGB(255, 150, 150, 150),
                        size: 25,
                      ),
                      onPressed: () {
                        /* 


                        Tampoco puedo hacer que ese boton muestre los widgets de abajo, estoy enojado


                         */
                      },
                    ),
                  )),
                ],
              ),
              //Los siguientes 5 Containers son la info que se debe desplegar al hacer click en la flecha
              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('INE ',
                            style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ))),
                        Icon(
                          Icons.check_circle_outline_outlined,
                          color: Color.fromARGB(255, 32, 226, 165),
                          size: 18,
                        ),
                      ],
                    ),
                    Text(
                      "La identidad de esta persona fue validada hace 2 (dos) días.",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 150, 150, 150),
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Tarjeta de Circulación ',
                            style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ))),
                        Icon(
                          Icons.check_circle_outline_outlined,
                          color: Color.fromARGB(255, 32, 226, 165),
                          size: 18,
                        ),
                      ],
                    ),
                    Text(
                      "Esta persona cumple con los requisitos de mobilidad vigentes.",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 150, 150, 150),
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Tarjeta de Tracto ',
                            style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ))),
                        Icon(
                          Icons.check_circle_outline_outlined,
                          color: Color.fromARGB(255, 32, 226, 165),
                          size: 18,
                        ),
                      ],
                    ),
                    Text(
                      "El vehículo tiene sus papeles al día y con vigencia válida.",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 150, 150, 150),
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Poliza de Seguro del Tracto ',
                            style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ))),
                        Icon(
                          Icons.check_circle_outline_outlined,
                          color: Color.fromARGB(255, 32, 226, 165),
                          size: 18,
                        ),
                      ],
                    ),
                    Text(
                      "Esta persona cumple con los requisitos de mobilidad vigentes.",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 150, 150, 150),
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Licencia del Operador ',
                            style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ))),
                        Icon(
                          Icons.check_circle_outline_outlined,
                          color: Color.fromARGB(255, 32, 226, 165),
                          size: 18,
                        ),
                      ],
                    ),
                    Text(
                      "Esta persona cumple con los requisitos de mobilidad vigentes.",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 150, 150, 150),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          )),
      ElevatedButton.icon(
/* No le puedo cambiar el tamaño al boton, no se porqué agh, dios mio*/
        icon: Icon(Icons.phone_forwarded_outlined),
        onPressed: () {},
        style: raisedButtonStyle,
        label: Text('Llamar'),
      ),
      Text(
        'Tarifa de Servicio',
        style: GoogleFonts.raleway(
          textStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
      Card(
        elevation: 5.0,
        color: Colors.white,
        child: Text('No puedo, esto está muy dificil'),
      ),
    ],
  );
}

/*

Esto es lo que se muestra trase presionar el botón de la flecha



 class ExpandedInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExpandedInfoState();
  }
}

class ExpandedInfoState extends State<ExpandedInfo> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    _visible = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPressed: () {
        setState(() {
          _visible = !_visible;
        });
      },
    );
  }
}
 */


/* 
Widget tarifaServicio() {
  return ListView(
    padding: const EdgeInsets.all(20.0),
    children: <Widget>[
      Text(
        'Tarifa de Servicio',
        style: GoogleFonts.raleway(
          textStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
      Card(
        color: Colors.white,
        child: Text('This is one more card'),
      ),
    ],
  );
} */