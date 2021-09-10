import 'package:app_theme/OrderPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_theme/HomePage.dart';
import 'package:app_theme/OrderPage.dart';

class PricePage extends StatelessWidget {
  const PricePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pricePage(),
    );
  }
}

class pricePage extends StatefulWidget {
  const pricePage({Key? key}) : super(key: key);

  @override
  _pricePageState createState() => _pricePageState();
}

class _pricePageState extends State<pricePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        shape: Border(bottom: BorderSide(color: Colors.green, width: 3)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.green,
          onPressed: openHomePage,
        ),

        title: Text("Fiyatlandırma", style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontFamily: 'sfpro',
        ),),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.grey,
            onPressed: null,
          ),
        ],
      ),
      body: SingleChildScrollView(
      child:
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/images/bg.png"),
              fit: BoxFit.fill,

            )
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Kuru Temizleme", style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w700,
              fontFamily: 'sfpro',), ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    clothWidget("Gömlek", "15 TL"),
                    clothWidget("Pantolon", "18 TL"),
                    clothWidget("Bluz", "17 TL"),
                    clothWidget("Etek", "18 TL"),
                    clothWidget("Çanta", "188 TL"),
                    clothWidget("Elbise", "4 TL"),
                    clothWidget("Yağmurluk", "18 TL"),
                    clothWidget("Yastık Kılıfı", "18 TL"),
                    clothWidget("Ugg Çizme", "18 TL"),
                    clothWidget("Postal", "12 TL"),
                    clothWidget("Fiber Yastık", "12 TL"),
                    clothWidget("Kadife Perde", "12 TL"),
                    clothWidget("Motorcu Mont", "12 TL"),
                    clothWidget("Atkı", "12 TL"),
                  ],
                ),

              ),

            ),


          ],


            ),

        ),),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: skipChoiceWidget(),
              title: Text(""),

          ),
          BottomNavigationBarItem(
              icon: totalWidget(),
              title: Text(""),
          ),


        ],
      ),


      );
  }

  Container totalWidget() {
    return Container(
      padding: EdgeInsets.all(5),
      height: 70,
      width: MediaQuery.of(context).size.width*0.50,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("TOPLAM", style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),),
          Text("200 TL", style: TextStyle(
            color: Colors.green,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),),
        ],
      ),
    );
  }

  Container skipChoiceWidget(){
    return Container(
      child:  InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>OrderPage()));
        },
        child: Container(
          padding: EdgeInsets.all(5),
          height: 70,
          width: MediaQuery.of(context).size.width*0.50,
          decoration: BoxDecoration(
            color: Colors.green,

          ),
          child: Center(
            child: Text("Ürün Seçimini Atla", style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),),
          ),
        ),
      ),
    );
  }
  Container clothWidget(String name, String price){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(name, style: TextStyle(
                     fontSize: 15,
                     color: Colors.black,
                     fontWeight: FontWeight.w700,
                     fontFamily: 'sfpro',
                   ),),
                   Text("$price", style: TextStyle(
                     fontSize: 15,
                     color: Colors.green,
                     fontWeight: FontWeight.w700,
                     fontFamily: 'sfpro',
                   ),),
                 ], ),
                 Row(
                   children: [
                     Container(
                       height: 40,
                       width: 30,
                       child: Icon(
                         Icons.add_circle_outline,
                         color: Colors.grey,
                       ),
                     ),
                     Container(
                       height: 40,
                       width: 30,
                       child: Center(
                         child: Text("1", style: TextStyle(
                           fontSize: 13,
                           color: Colors.grey,
                           fontWeight: FontWeight.w700,
                           fontFamily: 'sfpro',
                         ),),
                       ),
                     ),
                     Container(
                       height: 40,
                       width: 30,
                       child: Icon(
                         Icons.remove_circle_outline,
                         color: Colors.grey,
                       ),
                     ),
                   ],
                 ),



              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width*0.80,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void openHomePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
