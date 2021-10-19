import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class api_get_flutter extends StatefulWidget {
  const api_get_flutter({Key? key}) : super(key: key);

  @override
  _api_get_flutterState createState() => _api_get_flutterState();
}

class _api_get_flutterState extends State<api_get_flutter> {
  List _loadedPhotos = [];
  // Map _loadedPhotos = {};
  var site;

  Future<void> _fetchData() async {
    //const API_URL = 'https://jsonplaceholder.typicode.com/photos';
    //const API_URL = 'https://api.publicapis.org/entries';
    const API_URL = 'http://universities.hipolabs.com/search?country=United+States';

    final response = await http.get(Uri.parse(API_URL));
    final data = json.decode(response.body);
    //print(data['entries']);
    setState(() {
      _loadedPhotos = data;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('API'),
        ),
        body: SafeArea(
          child: _loadedPhotos.length == 0 ? Center(child:ElevatedButton( onPressed: _fetchData, child: Text('load photos'),),) :
          ListView.builder(
              itemCount: _loadedPhotos.length,
              itemBuilder: (BuildContext ctx, index) {
                return ListTile(
                  title: Text(_loadedPhotos[index]['web_pages'].toString()),
                  onTap: launchURL,
                  // subtitle: Text('Photo ID: ${_loadedPhotos[index]["Description"]}'),
                );
              }
          ),
        )
    );
  }
  launchURL () async{
    //const url =  ;
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  }
}


