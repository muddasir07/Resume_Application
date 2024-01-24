import 'package:flutter/material.dart';

projectData(num, type) {
    return Row(
      children: [
         Text( num,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(type),
        ),
      ],
    );
  }