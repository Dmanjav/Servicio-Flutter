// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appBarra() {
  return Row(
            children: [
              Wrap(
                spacing: 20,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                      child: Image.asset(
                    'assets/images/profile.png',
                    height: 60,
                  )),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alejandro Perez",
                          style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ))),
                      Text("Proveedor",
                          style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 247, 249, 251),
                          ))),
                    ],
                  )), 
                ],
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 237, 243, 254),
                    ),
                    height: 20,
                    width: 50,
                    child: Row(
                      children: [
                        Icon(
                          Icons.shield_sharp,
                          color: Color.fromARGB(255, 73, 118, 232),
                          size: 15,
                        ),
                        Text(
                          ' 80%',
                          style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 251, 235, 188),
                    ),
                    height: 20,
                    width: 50,
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_rounded,
                          color: Colors.yellow[700],
                          size: 15,
                        ),
                        Text(
                          ' 4.8',
                          style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                      ],
                    ),
                  )
                ],
              ))
            ],
          );
}