import 'package:flutter/material.dart';
import 'package:app_theme/screens/MorePage.dart';
import 'package:app_theme/screens/AddPromotionCodePage.dart';

class MyPromotionCodesPage extends StatelessWidget {
  const MyPromotionCodesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myPromotionCodesPage(),
    );
  }
}

class myPromotionCodesPage extends StatefulWidget {
  const myPromotionCodesPage({Key? key}) : super(key: key);

  @override
  _myPromotionCodesPageState createState() => _myPromotionCodesPageState();
}

class _myPromotionCodesPageState extends State<myPromotionCodesPage> {
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

        title: Text("Promosyon Kodlarım", style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700,

        ),),
      ),
      body:  Container(

        child:
        Align(
          alignment: FractionalOffset.bottomCenter,
          child: Row(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>AddPromotionCodePage()));
                },

                child: Container(
                  width: MediaQuery.of(context).size.width*0.80,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Center(
                      child:
                      RichText(

                        text: TextSpan(

                          children: [
                            TextSpan(
                              text: "Ekle",
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
            ],
          ),),
      ),
    );
  }
  void openMorePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) =>MorePage()));
  }
}

