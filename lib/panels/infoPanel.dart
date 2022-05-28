import 'package:flutter/material.dart';
import 'package:flutter_application_covid/datasorce.dart';
import 'package:flutter_application_covid/infoscreen.dart';
import 'package:flutter_application_covid/pages/faqs.dart';
import 'package:flutter_application_covid/pages/provinsiPage.dart';
import 'package:flutter_application_covid/tentangkami.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPanel extends StatelessWidget {
  const InfoPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // BUAT FAQ
            GestureDetector(
              onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FAQPage()));
            },
              child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Tanya Seputar COVID-19', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                  Icon(Icons.arrow_forward, color: Colors.white,),
                ]),
                      ),
            ),

            // BUAT Cara Mencegah covid bikin page lagi
            GestureDetector(
              onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InfoScreen()));
            },
              child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cara Mencegah COVID-19', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                  Icon(Icons.arrow_forward, color: Colors.white,),
                ]),
                      ),
            ),

            // BUAT DONASI
            GestureDetector(
              onTap: () {
              launch('https://covid19responsefund.org/');
            },
              child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Donasi COVID-19', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                  Icon(Icons.arrow_forward, color: Colors.white,),
                ]),
                      ),
            ),

          // BUAT BERITA
            GestureDetector(
              onTap: () {
              launch(
                  'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters');
            },
              child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Berita COVID-19', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                  Icon(Icons.arrow_forward, color: Colors.white,),
                ]),
                      ),
            ),

            // BUAT PEDULI LINDUNGI NANTI MASUK KE WEB NYA
            GestureDetector(
              onTap: () {
              launch(
                  'https://www.pedulilindungi.id/');
            },
              child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Peduli Lindungi', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                  Icon(Icons.arrow_forward, color: Colors.white,),
                ]),
                      ),
            ),

            // BUAT tentang kami singkat aja page baru
            GestureDetector(
              onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TentangKami()));
            },
              child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('TENTANG KAMI', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                  Icon(Icons.arrow_forward, color: Colors.white,),
                ]),
                      ),
            ),


        ],
      ),
    );
  }
}