import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {

  // TRY CHANGING FOLLOWING PROPERTIES
  double height = 200;
  double width = 200;
  Color color = Colors.amber;
  Alignment alignment = Alignment.center;
  BorderRadius borderRadius = BorderRadius.circular(24);
  Color borderColor = Colors.black;
  double borderWidth = 4;
  Gradient gradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(0.8, 1),
    colors: <Color>[
      Color(0xff5b0060),
      Color(0xffac255e),
      Color(0xffe16b5c),
      Color(0xffffb56b),
    ],
  );

  // END

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: ListView(
          children: [
            const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Container direct properties",
                  style: TextStyle(fontSize: 18),
                )),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: height,
                width: width,
                color: color,
                alignment: alignment,
                child: Container(
                  color: Colors.black,
                  height: 20,
                  width: 20,
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Container with Box decoration",
                  style: TextStyle(fontSize: 18),
                )),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  gradient: gradient,
                  borderRadius: borderRadius,
                  border: Border.all(color: borderColor, width: borderWidth),
                ),
                height: height,
                width: width,
                alignment: alignment,
                child: Container(
                  color: Colors.black,
                  height: 20,
                  width: 20,
                ),
              ),
            ),
          ],
        ));
  }
}
