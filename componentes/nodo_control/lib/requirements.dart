// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget requirements() {
  bool showMore = false;
  bool reqINE = true;
  bool reqTC = true;
  bool reqTT = true;
  bool reqPST = true;
  bool reqLO = true;

  List<bool> reqs = [reqINE, reqTC, reqTT, reqPST, reqLO];

  int countTrues(List<bool> reqs) {
    int count = 0;
    for (bool value in reqs) {
      if (value) {
        count++;
      }
    }
    return count;
  }

  int reqsCumplidos = countTrues(reqs);

  return Card(
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                  color: reqsCumplidos == 5 ? Color.fromARGB(255, 204, 255, 230) : Colors.red[300],
                ),
                height: 20,
                width: 50,
                child: Row(
                  children: [
                    Icon(
                      Icons.lock_outline,
                      color: reqsCumplidos == 5 ? Color.fromARGB(255, 0, 102, 53) : Colors.black,
                      size: 15,
                    ),
                    Text(
                      '$reqsCumplidos/5',
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                        color:  reqsCumplidos == 5 ? Color.fromARGB(255, 0, 102, 53) : Colors.black,
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
                      showMore
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      color: Color.fromARGB(255, 150, 150, 150),
                      size: 25,
                    ),
                    onPressed: () {} //=> setState (() => showMore = !showMore),
                    /* 


                        Tampoco puedo hacer que ese boton muestre los widgets de abajo, estoy enojado


                         */
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
                      reqINE
                          ? Icons.check_circle_outline_outlined
                          : Icons.block,
                      color: reqINE
                          ? Color.fromARGB(255, 32, 226, 165)
                          : Colors.red,
                      size: 18,
                    ),
                  ],
                ),
                Text(
                  reqINE
                      ? "La identidad de esta persona fue validada hace 2 (dos) días."
                      : "La identidad de esta persona no ha sido validada.",
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
                      reqTC ? Icons.check_circle_outline_outlined : Icons.block,
                      color: reqTC
                          ? Color.fromARGB(255, 32, 226, 165)
                          : Colors.red,
                      size: 18,
                    ),
                  ],
                ),
                Text(
                  reqTC
                      ? "El vehículo tiene sus papeles al día y con vigencia válida."
                      : "El vehículo no tiene sus papeles al día y/o vigentes.",
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
                      reqTT ? Icons.check_circle_outline_outlined : Icons.block,
                      color: reqTT
                          ? Color.fromARGB(255, 32, 226, 165)
                          : Colors.red,
                      size: 18,
                    ),
                  ],
                ),
                Text(
                  reqTT
                      ? "El vehículo tiene sus papeles al día y con vigencia válida."
                      : "El vehículo no tiene sus papeles al día y/o vigentes.",
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
                      reqPST
                          ? Icons.check_circle_outline_outlined
                          : Icons.block,
                      color: reqPST
                          ? Color.fromARGB(255, 32, 226, 165)
                          : Colors.red,
                      size: 18,
                    ),
                  ],
                ),
                Text(
                  reqPST
                      ? "Esta persona cumple con los requisitos de mobilidad vigentes."
                      : "Esta persona no cumple con los requisitos de mobilidad vigentes.",
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
                      reqLO ? Icons.check_circle_outline_outlined : Icons.block,
                      color: reqLO
                          ? Color.fromARGB(255, 32, 226, 165)
                          : Colors.red,
                      size: 18,
                    ),
                  ],
                ),
                Text(
                  reqLO
                      ? "Esta persona cumple con los requisitos de mobilidad vigentes."
                      : "Esta persona no cumple con los requisitos de mobilidad vigentes.",
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
      ));
}
