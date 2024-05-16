
import 'package:flutter/material.dart';

class mashq1 extends StatelessWidget {
  final TextEditingController cController = TextEditingController();
  final TextEditingController fController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Text",
            selectionColor: Colors.yellow,
          ),
          backgroundColor: Colors.orange,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.red,
                      width: 2.0,
                    ),
                  ),
                  child: TextField(
                    controller: cController,
                    decoration: InputDecoration(
                      labelText: "celsi",
                    ),
                    onChanged: (text) {
                      if (text.isNotEmpty) {
                        double celsius = double.parse(text);
                        double fahrenheit = (celsius * 9 / 5) + 32;
                        fController.text = fahrenheit.toStringAsFixed(2);
                      } else {
                        fController.text = '';
                      }
                    },
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 250,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                  child: TextField(
                    controller: fController,
                    decoration: InputDecoration(
                      labelText: "'celsi2",
                    ),
                    onChanged: (text) {
                      if (text.isNotEmpty) {
                        double fahrenheit = double.parse(text);
                        double celsius = (fahrenheit - 32) * 5 / 9;
                        cController.text = celsius.toStringAsFixed(2);
                      } else {
                        cController.text = '';
                      }
                    },
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}