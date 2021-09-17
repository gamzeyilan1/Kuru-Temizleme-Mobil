import 'package:app_theme/screens/OrderPage.dart';
import 'package:app_theme/widgets/SearchServicesWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_theme/screens/HomePage.dart';
import 'package:app_theme/screens/OrderPage.dart';
import 'package:app_theme/screens/SupportPage.dart';
import 'package:app_theme/screens/MorePage.dart';


import '../widgets/TotalWidget.dart';
import '../widgets/ServicesListWidget.dart';
import '../widgets/SearchServicesWidget.dart';



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
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case 1:
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => OrderPage()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SupportPage()));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MorePage()));
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
        title: Text(
          "Fiyatlandırma",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700,

          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.grey,
            onPressed: () => setState(() {isVisible = !isVisible;}, ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("asset/images/bg.png"),
          fit: BoxFit.fill,
        )),
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                  SearchServicesWidget(),

                Text(
                  "Kuru Temizleme",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,

                  ),
                ),
                Expanded(
                  child:
                  ServicesListWidget(),
                ),
              ],
            ),
            new Positioned(
                left: 0,
                right: 0,
                top: 480.0,
                child: new Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150.0,
                  decoration: new BoxDecoration(color: Colors.red),
                  child: Column(
                    children: [
                      skipChoiceWidget(),
                      TotalWidget(),
                    ],
                  ),
                )),
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
    );
  }



  Container skipChoiceWidget() {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OrderPage()));
        },
        child: Container(
          padding: EdgeInsets.all(5),
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          child: Center(
              child: RichText(
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
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }

  void openHomePage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}


