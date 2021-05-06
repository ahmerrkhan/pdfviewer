import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:pdfviewer/pdfscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: landingPage(),
    );
  }
}

class landingPage extends StatefulWidget {
  @override
  _landingPageState createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pdf Library.com'),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          child: Text('Shayad : Hazrat John Elia',style: TextStyle(color: Colors.white,fontSize: 15.0),),
          color: Colors.grey[900],
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => pdfscreen()),
            );
          },
        ),
      ),
    );
  }
}
