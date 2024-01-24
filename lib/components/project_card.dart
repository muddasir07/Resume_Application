import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

projectCard(BuildContext context, lang, tittle, desc, star) {
  return Container(
    height: 215,
    width: MediaQuery.of(context).size.width * 0.9,
    child: Card(
      color: const Color(0xff262628),
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 10, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lang,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              tittle,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              desc,
              style: const TextStyle(color: Colors.white70, fontSize: 20),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.white70,
                  size: 10,
                ),
                const SizedBox(width: 5),
                Text(
                  star,
                  style: const TextStyle(color: Colors.white70, fontSize: 20),
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
