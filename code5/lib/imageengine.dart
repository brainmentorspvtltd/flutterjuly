import 'dart:convert' as json;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myfirstappdemo/utils/server.dart';

class ImageEngine extends StatefulWidget {
  @override
  _ImageEngineState createState() => _ImageEngineState();
}

class _ImageEngineState extends State<ImageEngine> {
  Server server = new Server();
  var imageArray = [];
  convert(String body) {
    var map = json.jsonDecode(body);
    // print("Map is $map");
    print(map.runtimeType);
    setState(() {
      imageArray = map["data"];
    });

    // print("Image URL IS ${map["data"][0]["images"]["original"]["url"]}");
  }

  callAPI(String search) async {
    print("I am Before Future Call");
    //Future<http.Response> future = server.callServer(search, 10); // Using Future
    // Wait for the Response
    http.Response response = await server.callServer(search, 10);
    print("After Future Call");
    convert(response.body);
    /*future
        .then((response) => convert(response.body))
        .catchError((err) => print("Error in Server Call $err"));*/
    print("The End");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callAPI('Tom and Jerry');
  }

  TextEditingController _tc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: TextField(
            controller: _tc,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(Icons.search, size: 30, color: Colors.black),
                hintText: 'Type to Search'),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              callAPI(_tc.text);
            },
            icon: Icon(Icons.search, size: 30, color: Colors.yellowAccent),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: imageArray.map((currentElement) {
            var url = currentElement["images"]["original"]["url"];
            return Image.network(url);
          }).toList()

          /*<Widget>[
            imageArray.length == 0
                ? Text(
                    'No Data ...',
                    style: TextStyle(fontSize: 32),
                  )
                : convertWidget(imageArray.map((currentElement) {
                    var url = currentElement["images"]["original"]["url"];
                    return Image.network(url);
                  }).toList())
            // Dynamic Images
          ]*/
          ,
        ),
      ),
    );
  }
}
