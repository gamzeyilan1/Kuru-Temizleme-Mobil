import 'package:app_theme/screens/MorePage.dart';
import 'package:flutter/material.dart';
import 'package:app_theme/screens/HomePage.dart';

class HowItWorksPage extends StatelessWidget {
  const HowItWorksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: howItWorksPage(),
    );
  }
}

class howItWorksPage extends StatefulWidget {
  const howItWorksPage({Key? key}) : super(key: key);

  @override
  _howItWorksPageState createState() => _howItWorksPageState();
}

class _howItWorksPageState extends State<howItWorksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        shape: Border(bottom: BorderSide(color: Colors.green, width: 3)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.green,
          onPressed: openMorePage,
        ),

        title: Text("Sipariş Oluştur", style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700,

        ),),
      ),
      body: Container(

      child: Column(

        children: [
          SizedBox(height: 8,),
          Text("Lorem ipsum dolor sit amet", style: TextStyle(
            fontSize: 18,
            color: Colors.green,
            fontWeight: FontWeight.w700,

          ),),
          SizedBox(height: 8,),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ", style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w500,

          ),),),

          SizedBox(height: 8,),
          Text("Lorem ipsum dolor sit amet", style: TextStyle(
            fontSize: 18,
            color: Colors.green,
            fontWeight: FontWeight.w700,

          ),),
          SizedBox(height: 8,),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ", style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w500,

          ),),),
          SizedBox(height: 8,),
        ],

      ),),
    );
  }

  void openMorePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) =>MorePage()));
  }
}

