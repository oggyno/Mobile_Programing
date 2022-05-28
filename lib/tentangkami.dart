import 'package:flutter/material.dart';
import 'package:flutter_application_covid/profile_ui.dart';


class TentangKami extends StatelessWidget {
  const TentangKami({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("TENTANG KAMI"),
        backgroundColor: Color(0xff202c3b),),

        body: ProfileUI(),
    
    );
  }
}