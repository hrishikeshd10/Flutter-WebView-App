import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


void main(){
  runApp(new myApp());
}

class myApp extends StatefulWidget {
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    
  return new MaterialApp(
    title: "Web View APplication",
    home: new HomePage(),
  );

  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
   final size = MediaQuery.of(context).size;
    return WebviewScaffold(
       appBar: AppBar(backgroundColor: Colors.white,toolbarOpacity: 0.5,),
       url: "http://www.google.com/",
       withZoom: true,
    );
  }
}