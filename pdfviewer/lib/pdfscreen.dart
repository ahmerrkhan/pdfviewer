import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class pdfscreen extends StatefulWidget {
  @override
  _pdfscreenState1 createState() => _pdfscreenState();
}

class _pdfscreenState extends State<pdfscreen> {
  String pdfAsset = "assets/143_shayad-bookspk.pdf";
  PDFDocument _doc;
  bool _loading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromAsset(pdfAsset);
    setState(() {
      _doc = doc;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('John Elia 2'),
      ),
      body: _loading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : PDFViewer(document: _doc,),
    );
  }
}
