import 'package:flutter/material.dart';
import 'package:muddasir_portfolio_application/components/project_card.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xff252525),
        title: const Text("Projects"),
      ),
      body: SingleChildScrollView(
          child: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         projectCard(context, "flutter", "tittle", "desc", "1"),
         projectCard(context, "flutter", "tittle", "desc", "1"),
         projectCard(context, "flutter", "tittle", "desc", "1"),
         projectCard(context, "flutter", "tittle", "desc", "1"),
         projectCard(context, "flutter", "tittle", "desc", "1"),
          ],
        ),
      )),
    );
  }
}
