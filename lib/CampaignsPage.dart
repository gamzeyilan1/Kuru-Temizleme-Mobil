import 'package:flutter/material.dart';
import 'package:app_theme/MorePage.dart';

class CampaignsPage extends StatelessWidget {
  const CampaignsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: campaignsPage(),
    );
  }
}

class campaignsPage extends StatefulWidget {
  const campaignsPage({Key? key}) : super(key: key);

  @override
  _campaignsPageState createState() => _campaignsPageState();
}

class _campaignsPageState extends State<campaignsPage> {
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

        title: Text("Kampanyalar", style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontFamily: 'sfpro',
        ),),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
             cardWidget(),
             cardWidget(),
             cardWidget(),
             cardWidget(),
             cardWidget(),
            ],
          ),

        ),

      ),
    );
  }
  void openMorePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => MorePage()));
  }

  Container cardWidget(){
    return Container(
      child: Center(
        child: Card(
          elevation: 5,
          child: InkWell(
            onTap: () {
              print('Card tapped.');
            },
            child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Ink.image(
                    image: AssetImage("asset/images/cardImage.jpg"),
                 height: 200,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
             SizedBox(
              width: 300,
              height: 15,
                child: Text('74 gün önce',  style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w300,

                ),),
            ),
             SizedBox(
              width: 300,
              height: 50,
              child: Center(
                child: Text('Vodafone Red Abonelerine Kuru Temizleme %40 İndirimli',  style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,

                ),),),
            ),
            ],),
          ),
        ),
      ),
    );
  }
}

