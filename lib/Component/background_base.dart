
  import 'package:flutter/material.dart';

Container backgroundbase() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(135, 206, 235, 1),
          Color.fromRGBO(0, 255, 255, 1),
          Color.fromRGBO(152, 251, 152, 1),
          // Color.fromRGBO(203, 192, 255, 1),
        ]),
        
      ),
    );
  }