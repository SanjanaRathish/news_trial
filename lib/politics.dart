import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class politics extends StatefulWidget {
  const politics({Key? key}) : super(key: key);

  @override
  State<politics> createState() => _politicsState();
}

class _politicsState extends State<politics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Political News"),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: apicall(),
            builder: (context,snapshot){
              return Column(
                children: [
                  Text(snapshot.data['title'].toString())
                ],
              );
            }
          )
        ],
      ),
    );
  }
}

Future apicall() async{
  final url= Uri.parse(
      "https://newsdata.io/api/1/news?apikey=pub_1344605d1e009aacacc145a23ef4a34cea4b3&category=politics"
  );
  final response= await http.get(url);
  print(response.body);
  final json= jsonDecode(response.body);
  print(json['results']['title']);

  final output = {
    'title': json['results']['title']
  };
  return output;
  }

