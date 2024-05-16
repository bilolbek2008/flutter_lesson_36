import 'package:flutter/material.dart';
import 'package:flutter_lesson_36/login/login2.dart';
import 'package:flutter_lesson_36/login/login3.dart';


class login1 extends StatelessWidget {
  const login1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
                children: [
                  Center(
                    child: Text("Lets start your\nScholdule activity",
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
          
                    ),),
                  ),
                  SizedBox(height: 20,),
                  Text("Quickly see your upcoming event, tasks,\nconference calls, weather, and more",
                    style: TextStyle(
                      color: Colors.black12,
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
          
                    ),),
                  SizedBox(height: 10,),
                  Image.asset("assets/images/image5.png"),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => login2()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),

                      child: Center(
                        child: Text("Create accaunt",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),

                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.apple),
                                    SizedBox(width: 5,),
                                    Text("Apple",style: TextStyle(
                                      color: Colors.black,
                                    ),)
                                  ],
                                ),
                              ),
                            )
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),

                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.apple,color: Colors.red,),
                                    SizedBox(width: 5,),
                                    Text("Google",style: TextStyle(
                                      color: Colors.black,
                                    ),)
                                  ],
                                ),
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text("You have acount",
                            style: TextStyle(
                              color: Colors.black12,
                              fontSize: 20,
                              fontWeight: FontWeight.w100,

                            ),),
                          IconButton(onPressed: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context) => login3()));
                          },
                            icon: Text("login",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.w100,

                            ),),),
                        ],
                      )
                    ],
                  )
                ],
              ),
        ),
        ),
    );
  }
}
