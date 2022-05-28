import 'package:flutter/material.dart';

class ProvinsiTerbanyakPanel extends StatelessWidget {

  final List provinsiData;

  const ProvinsiTerbanyakPanel({ Key? key, required this.provinsiData }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Image.network(provinsiData[index]['countryInfo']['flag'], 
                height: 25,),
                SizedBox(width: 10,),
              Text(provinsiData[index]['country'],
                style: 
                TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
              Text('Meninggal: ' + provinsiData[index]['deaths'].toString(), 
                style:
                TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
            ],
          ),
        );
      },
        itemCount: 5,),
    );
  }
}
