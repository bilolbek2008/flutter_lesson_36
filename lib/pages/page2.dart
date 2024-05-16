import 'package:flutter/material.dart';
import 'package:flutter_lesson_36/pages/page1.dart';
import 'package:flutter_lesson_36/pages/page3.dart';


class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset("assets/images/image3.png"),
                SizedBox(height: 20,),
                Text("Set your Schedule",style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,

                ),),
                SizedBox(height: 10,),
                Text("Quickle see your upcoming event, task,\n conference calls,weather ,and more",style: TextStyle(
                  color: Colors.black12,
                  fontSize: 20,
                  fontWeight: FontWeight.w100,

                ),),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Ppage3()),
                      );
                    }, child: Text("Get Started",style: TextStyle(
                ),))

              ],
            ),
          ),
        ),
      ),
    );;
  }
}
