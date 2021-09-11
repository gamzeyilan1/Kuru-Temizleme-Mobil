import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_theme/StyleScheme.dart';
import 'package:app_theme/OrderPage.dart';
import 'package:app_theme/PricePage.dart';
import 'package:app_theme/SupportPage.dart';
import 'package:app_theme/MorePage.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_index) {
      case 0:
        break;
        case 1:
          Navigator.push(context, MaterialPageRoute(builder: (context) => PricePage()));
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

      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 10,
        toolbarHeight: 130,
        centerTitle: true,
        actionsIconTheme: IconThemeData(color: Colors.transparent),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.grey,
            onPressed: null,
          ),
        ],
        leading: SizedBox(width: 20,),
        title: Container(

          child: Column(

            children:[
              SizedBox(height: 10,),
              Image.asset("asset/images/logo.png",  height: 32, ),

              Align(

                alignment: Alignment.center,

                child: Container(
                   child: Text("ŞİRKET ADI", style: TextStyle(color: Colors.green,),), ),),
              Align(

                alignment: Alignment.center,

                child: Container(
                   child: Text("Siparişler", style: TextStyle(color: Colors.black,),), ),),
             ],
          ),
        ),

      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/images/bg.png"),
              fit: BoxFit.fill,

            )
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            InkWell(
              onTap: openOrderPage,
             child: Center(

            child: Container(
               height: 150,
               width: 150,
              margin: EdgeInsets.only(top: 170),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black12,
                image: DecorationImage (
                   image: AssetImage('asset/images/basket.png'),
                  fit: BoxFit.none,
                ),

              ),

            ),), ),
          ],
        ),
      ),
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
      );  }

  void openOrderPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage()));
  }

}

