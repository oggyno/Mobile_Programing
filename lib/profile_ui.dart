import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget> [
            Image(
              image: AssetImage('assets/images/tampilan.jpg'),),
            Positioned(
            bottom: -60,
            child: CircleAvatar(radius: 80, backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/images/logo_covid.png'),),),
          ],
        ),

        SizedBox(height:60,),
        ListTile(
          title: Center(child: Text('KELOMPOK KAMI', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),), 
          subtitle: Center(child: Text('Flutter Developer Tugas', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),),
        
        GestureDetector(
              onTap: () {
              launch('https://www.instagram.com/pratama_joshua/');
            },
              child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: Color(0xff202c3b),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('INSTAGRAM', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                  Icon(Icons.arrow_forward, color: Colors.white,),
                ]),
                      ),
            ),

            GestureDetector(
              onTap: () {
              launch('https://github.com/AlvianWijaya26/KELOMPOK3AHSIAP');
            },
              child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: Color(0xff202c3b),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('GITHUB', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                  Icon(Icons.arrow_forward, color: Colors.white,),
                ]),
                      ),
            ),

            GestureDetector(
              onTap: () {
              launch("https://mail.google.com/");
            },
              child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: Color(0xff202c3b),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('EMAIL', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                  Icon(Icons.arrow_forward, color: Colors.white,),
                ]),
                      ),
            ),

      ],
    );
  }
}