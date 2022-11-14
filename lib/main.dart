import 'package:flutter/material.dart';
import 'package:news_trial/sports.dart';
import 'package:news_trial/politics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black54,
        brightness: Brightness.dark
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text("worldInfo",style: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.bold,
          color: Colors.red[900]
        ),),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      color: Colors.white60,
                      child: GestureDetector(
                        onTap:(){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> sports())
                          );
                        },
                      ),
                    ),
                  ),
                  Text("Sports")
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 30,
                  color: Colors.white60,
                  child: GestureDetector(
                    onTap:(){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> politics())
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 30,
                  color: Colors.white60,
                  child: GestureDetector(
                    onTap:(){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> sports())
                      );
                    },
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 30,
                  color: Colors.white60,
                  child: GestureDetector(
                    onTap:(){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> sports())
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 30,
                  color: Colors.white60,
                  child: GestureDetector(
                    onTap:(){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> politics())
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 30,
                  color: Colors.white60,
                  child: GestureDetector(
                    onTap:(){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> sports())
                      );
                    },
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
