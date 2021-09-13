import 'package:flutter/material.dart';
import 'package:app_theme/MorePage.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: termsAndConditionsPage(),
    );
  }
}

class termsAndConditionsPage extends StatefulWidget {
  const termsAndConditionsPage({Key? key}) : super(key: key);

  @override
  _termsAndConditionsPageState createState() => _termsAndConditionsPageState();
}

class _termsAndConditionsPageState extends State<termsAndConditionsPage> {
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

        title: Text("Gizlilik Sözleşmesi", style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontFamily: 'sfpro',
        ),),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/images/bg.png"),
              fit: BoxFit.fill,

            )
        ),
     child:  Column(
        children: [
          SizedBox(height: 8,),
          Text("Lorem ipsum dolor sit amet", style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontFamily: 'sfpro',
          ),),
          SizedBox(height: 8,),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ", style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontFamily: 'sfpro',
            ),),),

          SizedBox(height: 8,),
          Text("Lorem ipsum dolor sit amet", style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontFamily: 'sfpro',
          ),),
          SizedBox(height: 8,),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ", style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontFamily: 'sfpro',
            ),),),
          SizedBox(height: 8,),
        ],

      ),),
    );
  }
  void openMorePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => MorePage()));
  }
}
