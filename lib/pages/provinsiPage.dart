import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_application_covid/pages/search.dart';
import 'package:http/http.dart' as http;

// countryData diganti nama dengan provinsiData

class CountryPage extends StatefulWidget {
  CountryPage({Key? key}) : super(key: key);

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {

  List provinsiData = []; //gak tau kenapa harus begini
  fetchProvinsiData()async{
    http.Response response = await http.get(Uri.parse('https://corona.lmao.ninja/v2/countries')); // harusnya https://data.covid19.go.id/public/api/prov.json
    setState(() {
    provinsiData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchProvinsiData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget> [
          IconButton(icon: Icon(Icons.search), onPressed: (){

            showSearch(context: context, delegate: Search(provinsiData));

          },)
        ],
        title: Text('Status Negara'),
        backgroundColor: Color(0xff202c3b),
      ),
      body: provinsiData==null?Center( child: CircularProgressIndicator(),) 
      : ListView.builder(itemBuilder: (context, index){
      return Container(
        height: 130,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.grey.shade100,blurRadius: 10, offset: Offset(0,10))
        ],),
        
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(provinsiData[index]['country'], style: TextStyle(fontWeight: FontWeight.bold),),
                  Image.network(provinsiData[index]['countryInfo']['flag'], height: 50, width: 60,),
                ],
              ),
            ),
            Expanded(child: Container(

              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget> [
                  Text('TERKONFIRMASI: ' +  provinsiData[index]['cases'].toString(), 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        color: Colors.red),),

                  Text('KASUS AKTIF: ' +  provinsiData[index]['active'].toString(), 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        color: Colors.blue),),
                  Text('SEMBUH: ' +  provinsiData[index]['cases'].toString(), 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        color: Colors.green),),

                  Text('MENINGGAL: ' +  provinsiData[index]['cases'].toString(), 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        color: Colors.grey),),
                ],
              ),
            )),

          ],
        ),

      );
    },
    itemCount: provinsiData==null? 0 : provinsiData.length,
    
      ),
    );
  }
}

  
    
    
    