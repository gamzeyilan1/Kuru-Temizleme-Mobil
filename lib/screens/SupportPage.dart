import 'package:flutter/material.dart';
import 'package:app_theme/screens/HomePage.dart';
import 'package:app_theme/screens/PricePage.dart';
import 'package:app_theme/screens/OrderPage.dart';
import 'package:app_theme/screens/MorePage.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: supportPage(),
    );
  }
}
class supportPage extends StatefulWidget {
  const supportPage({Key? key}) : super(key: key);

  @override
  _supportPageState createState() => _supportPageState();
}

class _supportPageState extends State<supportPage> {
  int _index = 3;
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
        title: Container(

          child: Column(

            children:[
              Align(

                alignment: Alignment.center,

                child: Container(
                  child: Text("ŞİRKET ADI", style: TextStyle(color: Colors.green,),), ),),
              Align(

                alignment: Alignment.center,

                child: Container(
                  child: Text("Size nasıl yardımcı olabiliriz?", style: TextStyle(color: Colors.black, fontSize: 15),), ),),
              SizedBox(height: 20,),
              Text("Ortalama dönüş süresi 15 dakikadır.", style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w500,

              ),),


            ],
          ),
        ),

      ),
      body: Container(
        padding: EdgeInsets.all(20),

        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: 20,),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Lütfen bilgi girin.';
                }},
              decoration: const InputDecoration(
                hintText: 'Görüşlerinizi bildirin.',
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage()));
              },
              child: Container(
                padding: EdgeInsets.all(2),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Center(
                  child: Text("Gönder", style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),),
                ),
              ),
            ),

            SizedBox(height: 20,),
            RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Container(
                      padding: EdgeInsets.all(2),
                    child: Icon(Icons.mail_outline, size: 14,),),
                  ),
                  TextSpan(
                    text: "Email", style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,

                  ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 5,),
            Text("bilgi@temiz.co", style: TextStyle(
              fontSize: 14,
              color: Colors.green,
              fontWeight: FontWeight.w500,

            ),),
            SizedBox(height: 20,),
            RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
              child: Container(
              padding: EdgeInsets.all(2),
                    child: Icon(Icons.call, size: 14),),
                  ),
                  TextSpan(
                    text: "Müşteri Hizmetleri", style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,

                  ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 5,),
            Text("+90 850 885 15 45", style: TextStyle(
              fontSize: 14,
              color: Colors.green,
              fontWeight: FontWeight.w500,

            ),),
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


}



