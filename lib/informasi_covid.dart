import 'package:flutter/material.dart';

class InformasiCovid extends StatelessWidget {
  const InformasiCovid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [

        SizedBox(height:2,),
        ListTile(
          title: Center(child: Text('GEJALA COVID-19', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),),
        ),
        
        SizedBox(height:1,),
        ListTile(
          title: Text('Gejala Ringan-Sedang: ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
          subtitle: Text('Demam, batuk, kelelahan, Kehilangan rasa dan bau, sakit tenggorokan, sakit kepala, diare, ruam pada kulit, dan mata merah atau iritasi.', 
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(height:1,),
        ListTile(
          title: Text('Gejala Serius: ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
          subtitle: Text('Kesulitan bernapas atau sesak napas, kesulitan berbicara maupun bergerak, nyeri dada.', 
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(height:1,),
        ListTile(
          title: Text(' ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
          subtitle: Text('Rata-rata gejala akan muncul setelah 5-6 hari setelah orang pertama terinfeksi Virus ini, terkandang sampai 14 hari setelah terinfeksi.', 
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ),
      
        SizedBox(height:2,),
        ListTile(
          title: Center(child: Text('PENCEGAHAN COVID-19', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),),
        ),
      
        SizedBox(height:1,),
        ListTile(
          subtitle: Text('Selalu jaga jarak aman, gunakan masker ditempat umum, Cuci tangan dengan sabun dan air atau cairan pembersih tangan berbahan alkohol, ikuti vaksinasi, dan tutupi batuk dengan lengan atau tisu.', 
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      
      ],
    );

    

  
  }
}