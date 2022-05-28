import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_covid/pages/provinsiPage.dart';
import 'package:flutter_application_covid/panels/indonesiapanel.dart';
import 'package:flutter_application_covid/panels/infoPanel.dart';
import 'package:flutter_application_covid/panels/provinsiterbanyak.dart';
import 'package:flutter_application_covid/tentangkami.dart';
import 'package:http/http.dart' as http;
import 'datasorce.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map indonesiaData = {'cases': 12}; //gak tau kenapa harus begini
  fetchIndonesiaData()async{
    http.Response response = await http.get(Uri.parse('https://corona.lmao.ninja/v2/all')); // harusnya https://data.covid19.go.id/public/api/update.json
    setState(() {
    indonesiaData = json.decode(response.body);
    });
  }

  List provinsiData = []; //gak tau kenapa harus begini
  fetchProvinsiData()async{
    http.Response response = await http.get(Uri.parse('https://corona.lmao.ninja/v2/countries?sort=cases')); // harusnya https://data.covid19.go.id/public/api/prov.json
    setState(() {
    provinsiData = json.decode(response.body);
    });
  }

 @override
  void initState() {
    fetchIndonesiaData();
    fetchProvinsiData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff202c3b),
        title: Text('COVID-19 WORLD TRACKER'),
        centerTitle: false,
      ),

  body: SingleChildScrollView(child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(12),
        height: 100,
        color: Colors.orange[100],
        child: Text(
          DataSource.quote,
        style: TextStyle(
        color: Colors.orange[800],
        fontWeight: FontWeight.bold,
        fontSize: 16),
      ),
    ),
    Padding
      (padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('PENYEBARAN DUNIA', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => CountryPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: primaryBlack,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(13),
              child: Text('Per-Negara', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),)),
          ),
        ],
      ),
    ),
      indonesiaData==null? CircularProgressIndicator():IndonesiaPanel(indonesiaData: indonesiaData,),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text('5 NEGARA DENGAN KASUS TERBANYAK', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
      ),
    
    SizedBox(height: 10,),
    provinsiData==null?Container(): ProvinsiTerbanyakPanel(provinsiData: provinsiData,),

    InfoPanel(),
    SizedBox(height: 20,),
    Center(child: Text("BERSAMA KITA LAWAN CORONA", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
    SizedBox(height: 50,),
  ],

),
),

    );
  }
}