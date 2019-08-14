import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultPage(),
    );
  }
}

const platform = MethodChannel('samples.chenhang/navigation');

class DefaultPage extends StatelessWidget {
  DefaultPage({ Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(title: Text("Default Page")),
      body:  Center(
          child:
          RaisedButton(child: Text("打开应用商店"), onPressed: () {
            platform.invokeMethod('openAppStore')               ;
          })),

    );
  }
}
