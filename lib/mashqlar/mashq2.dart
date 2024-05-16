import 'package:flutter/material.dart';

class TOdo extends StatefulWidget {
  const TOdo({Key? key}) : super(key: key);

  @override
  State<TOdo> createState() => _TOdoState();
}

class _TOdoState extends State<TOdo> {
  Color color0 = Colors.grey;
  Color color1 = Colors.grey;
  Color color2 = Colors.red;


  Color color00 = Colors.grey;
  Color color11 = Colors.grey;
  Color color22 = Colors.red;


  Color color000 = Colors.grey;
  Color color111 = Colors.grey;
  Color color222 = Colors.red;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Todo"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (color0 == color1) {
                          color0 = color2;
                        } else {
                          color0 = color1;
                        }
                      });
                    },
                    icon: Icon(Icons.favorite, color: color0),
                  ),
                  Spacer(),
                  Text("TODO 1 ")
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (color00 == color11) {
                          color00 = color22;
                        } else {
                          color00 = color11;
                        }
                      });
                    },
                    icon: Icon(Icons.favorite, color: color00),
                  ),
                  Spacer(),
                  Text("TODO 2 ")
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (color000 == color111) {
                          color000 = color222;
                        } else {
                          color000 = color111;
                        }
                      });
                    },
                    icon: Icon(Icons.favorite, color: color000),
                  ),
                  Spacer(),
                  Text("TODO 3 ")
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
