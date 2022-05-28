import 'package:flutter/material.dart';
import 'package:flutter_application_covid/informasi_covid.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("INFORMASI COVID"),
        backgroundColor: Color(0xff202c3b),),

    body: InformasiCovid(),
          
      );
  }
}
