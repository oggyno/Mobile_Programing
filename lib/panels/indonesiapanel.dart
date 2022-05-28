import 'package:flutter/material.dart';

class IndonesiaPanel extends StatelessWidget {

  final Map indonesiaData;

  const IndonesiaPanel({Key? key,required this.indonesiaData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 2),
        children: <Widget>[
          StatusPanel(
            title: 'TOTAL POSITIF',
            panelColor: (Colors.red[100])!,
            textColor: Colors.red,
            count: indonesiaData['cases'].toString(), // disesuaikan dengan apinya
          ),
          StatusPanel(
            title: 'TOTAL DIRAWAT',
            panelColor: (Colors.blue[100])!,
            textColor: (Colors.blue[900])!,
            count: indonesiaData['active'].toString(),
          ),
          StatusPanel(
            title: 'TOTAL SEMBUH',
            panelColor: (Colors.green[100])!,
            textColor: Colors.green,
            count: indonesiaData['recovered'].toString(),
          ),
          StatusPanel(
            title: 'TOTAL MENINGGAL',
            panelColor: (Colors.grey[400])!,
            textColor: (Colors.grey[900])!,
            count: indonesiaData['deaths'].toString(),
          ),
        
        ],
      ),
    );
  }
}

class StatusPanel extends StatelessWidget {

  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  const StatusPanel({ Key? key,required this.panelColor,required this.textColor,required this.title,required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.all(10),
      height: 80, width: width/2,
      color: panelColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: textColor),
          ),
          Text(
            count,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
          )
        ],
      ),
    );
  }
}