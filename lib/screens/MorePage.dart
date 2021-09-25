import 'package:app_theme/screens/AddPromotionCodePage.dart';
import 'package:app_theme/screens/AddressesPage.dart';
import 'package:app_theme/screens/CampaignsPage.dart';
import 'package:app_theme/screens/FreeServicesPage.dart';
import 'package:app_theme/screens/HowItWorksPage.dart';
import 'package:app_theme/screens/MyPromotionCodesPage.dart';
import 'package:app_theme/screens/OrderHistoryPage.dart';
import 'package:app_theme/screens/PaymentMethodsPage.dart';
import 'package:app_theme/screens/PricePage.dart';
import 'package:app_theme/screens/ProfilePage.dart';
import 'package:app_theme/screens/TermsAndConditionsPage.dart';
import 'package:flutter/material.dart';
import 'package:app_theme/screens/HomePage.dart';
import 'package:app_theme/screens/OrderPage.dart';
import 'package:app_theme/screens/SupportPage.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: morePage(),
    );
  }
}
class morePage extends StatefulWidget {
  const morePage({Key? key}) : super(key: key);

  @override
  _morePageState createState() => _morePageState();
}

class _morePageState extends State<morePage> {
  int _index = 4;
  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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
        title: Text("Daha Fazla", style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700,

        ),),

      ),
      body: Container(

        child: Column(
          children: [
            Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>HowItWorksPage()));
                    },

                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 50,
                      width: MediaQuery.of(context).size.width,

                      child: Center(
                          child:
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 3),
                                    child: Icon(Icons.map_outlined, size: 19,  color: Colors.green,   ),),

                                ),
                                TextSpan(
                                  text: "Nasıl çalışıyoruz?",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,

                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  ),

                ],
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

            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>OrderHistoryPage()));
                  },

                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width,

                    child: Center(
                        child:
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: Icon(Icons.list_alt, size: 19,  color: Colors.green,   ),),

                              ),
                              TextSpan(
                                text: "Önceki Siparişlerim",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ),

              ],
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

            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>AddressesPage()));
                  },

                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width,

                    child: Center(
                        child:
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: Icon(Icons.place_outlined, size: 19,  color: Colors.green,   ),),

                              ),
                              TextSpan(
                                text: "Adreslerim",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ),

              ],
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

            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>PaymentMethodsPage()));
                  },

                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width,

                    child: Center(
                        child:
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: Icon(Icons.credit_card, size: 19,  color: Colors.green,   ),),

                              ),
                              TextSpan(
                                text: "Ödeme Yöntemleri",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ),

              ],
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

            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>AddPromotionCodePage()));
                  },

                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width,

                    child: Center(
                        child:
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: Icon(Icons.card_giftcard, size: 19,  color: Colors.green,   ),),

                              ),
                              TextSpan(
                                text: "Promosyon Kodu Ekle",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ),

              ],
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

            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>MyPromotionCodesPage()));
                  },

                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width,

                    child: Center(
                        child:
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: Icon(Icons.card_giftcard, size: 19,  color: Colors.green,   ),),

                              ),
                              TextSpan(
                                text: "Promosyon Kodlarım",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ),

              ],
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

            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>CampaignsPage()));
                  },

                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width,

                    child: Center(
                        child:
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: Icon(Icons.stars_rounded, size: 19,  color: Colors.green,   ),),

                              ),
                              TextSpan(
                                text: "Kampanyalar",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ),

              ],
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

            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FreeServicesPage()));
                  },

                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width,

                    child: Center(
                        child:
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: Icon(Icons.arrow_circle_up, size: 19,  color: Colors.green,   ),),

                              ),
                              TextSpan(
                                text: "Ücretsiz Hizmetler",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ),

              ],
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

            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>TermsAndConditionsPage()));
                  },

                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width,

                    child: Center(
                        child:
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: Icon(Icons.file_present, size: 19,  color: Colors.green,   ),),

                              ),
                              TextSpan(
                                text: "Gizlilik Sözleşmesi",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ),

              ],
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

            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>ProfilePage()));
                  },

                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width,

                    child: Center(
                        child:
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: Icon(Icons.person, size: 19,  color: Colors.green,   ),),

                              ),
                              TextSpan(
                                text: "Profil",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ),

              ],
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
  void openHomePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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
}

