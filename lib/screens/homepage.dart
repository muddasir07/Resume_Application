import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muddasir_portfolio_application/components/card.dart';
import 'package:muddasir_portfolio_application/components/upper_data.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          leading: PopupMenuButton(
              color: Colors.black,
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                    PopupMenuItem(
                        value: 1,
                        child: TextButton(
                          child: const Text("About Me",
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {
                            Navigator.pushNamed(context, 'about');
                          },
                        )),
                    PopupMenuItem(
                        value: 2,
                        child: TextButton(
                          child: const Text(
                            "Projects",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'project');
                          },
                        )),
                  ]),
          elevation: 0,
          backgroundColor: Colors.transparent),
      body: SlidingSheet(
        elevation: 0,
        cornerRadius: 60,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.38, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Stack(children: [
          Container(
            margin: const EdgeInsets.only(top: 35),
            child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.transparent])
                      .createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/image.png',
                  fit: BoxFit.contain,
                )),
          ),
          Container(
            alignment: Alignment.center,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5),
            child: const Column(
              children: [
                SizedBox(height: 5),
                Text(
                  "Muddasir Shabbir",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 0),
                Text("Software Engineer",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ],
            ),
          )
        ]),
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 35),
            height: 550,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  projectData('22', ' Projects'),
                  projectData('150+', ' Contributions'),
                  projectData('1+', ' Experience'),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                "Speacialized In",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myCard(const Icon(FontAwesomeIcons.android), "Android"),
                      myCard(const Icon(FontAwesomeIcons.git), "Android"),
                      myCard(const Icon(FontAwesomeIcons.github), "Android"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myCard(Icons.android, "Android"),
                      myCard(Icons.android, "Android"),
                      myCard(Icons.android, "Android"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myCard(Icons.android, "Android"),
                      myCard(Icons.android, "Android"),
                      myCard(Icons.android, "Android"),
                    ],
                  )
                ],
              )
            ]),
          );
        },
      ),
    );
  }
}
