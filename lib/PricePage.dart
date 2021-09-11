import 'package:app_theme/OrderPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_theme/HomePage.dart';
import 'package:app_theme/OrderPage.dart';
import 'package:app_theme/SupportPage.dart';
import 'package:app_theme/MorePage.dart';
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
  int _index = 1;
  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case 1:
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage()));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) => SupportPage()));
        break;
      case 4:
        Navigator.push(context, MaterialPageRoute(builder: (context) => MorePage()));
        break;
    }
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
      body: Stack(
         children: <Widget>[
          ListView(
            children: [
                 SingleChildScrollView(
                   child: Container(
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

        ),


                 ),


             ],

          ),
          new Positioned(
          left: 0,
          right: 0,
          top: 550.0,
          child: new Container(
            width: MediaQuery.of(context).size.width,
            height: 150.0,
            decoration: new BoxDecoration(color: Colors.red),
            child: Column(
              children: [

                skipChoiceWidget(),
                totalWidget(),
              ],
            ),
          )
      ), ],),

          bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        iconSize: 30,
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            title: Text("Siparişlerim"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            title: Text("Fiyat"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outlined),
            title: Text("Yeni Sipariş"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_rounded),
            title: Text("İletişim"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.keyboard_control_rounded),
            title: Text("Daha Fazla"),
          ),
        ],
      ),

      );
  }

  Container totalWidget() {
    return Container(
      padding: EdgeInsets.all(5),
      height: 70,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child:
          Column(
            children: [
      Row(
        children: [
          Container(
            padding: EdgeInsets.only(left:  20,),
             child: Text("TOPLAM", style: TextStyle(
               color: Colors.grey,
               fontSize: 13,
               fontWeight: FontWeight.w700,

          ),),),
          SizedBox(width: 230,),
          Container(
            padding: EdgeInsets.only(right:  20,),
            child: Text("200 TL", style: TextStyle(
            color: Colors.green,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),),),
        ],
      ),
              SizedBox(height: 5,),
              Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Tüm indirimler dahil minimum sepet tutarı 49 lira olmalıdır.", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,

                ),),
               ],
              ),
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
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          child: Center(
            child:
              RichText(

                text: TextSpan(

                  children: [
                    TextSpan(
                      text: "Ürün Seçimini Atla",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                    WidgetSpan(

                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Icon(Icons.arrow_forward_ios, size: 14,  color: Colors.white,   ),),

                    ),
                  ],
                ),
              )
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
