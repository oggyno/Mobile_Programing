import 'package:flutter/material.dart';

class Search extends SearchDelegate{

  final List countryList;

  Search(this.countryList);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
     IconButton(icon: Icon(Icons.clear), onPressed: (){
       query='';
     })
   ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){
      Navigator.pop(context);
    },);
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    final suggestionList 
    = query.isEmpty?
    countryList: 
    countryList.where((element) => element['country'].toString().toLowerCase().startsWith(query)).toList();

    return ListView.builder(

      itemCount: suggestionList.length,

      itemBuilder: (context,index){
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
                  Text(suggestionList[index]['country'], style: TextStyle(fontWeight: FontWeight.bold),),
                  Image.network(suggestionList[index]['countryInfo']['flag'], height: 50, width: 60,),
                ],
              ),
            ),
            Expanded(child: Container(

              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget> [
                  Text('TERKONFIRMASI: ' +  suggestionList[index]['cases'].toString(), 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        color: Colors.red),),

                  Text('KASUS AKTIF: ' +  suggestionList[index]['active'].toString(), 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        color: Colors.blue),),
                  Text('SEMBUH: ' +  suggestionList[index]['cases'].toString(), 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        color: Colors.green),),

                  Text('MENINGGAL: ' +  suggestionList[index]['cases'].toString(), 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        color: Colors.grey),),
                ],
              ),
            )),

          ],
        ),

      );
      },);
  }
  
}