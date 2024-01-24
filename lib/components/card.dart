import 'package:flutter/material.dart';

myCard(icon, tech) {
  return Container(
    width: 105,
    height: 115,
    child: Card(
      margin: const EdgeInsets.all(0),
      color: const Color(0xff252525),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(height: 10),
        Text(
          tech,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ]),
    ),
  );
}
