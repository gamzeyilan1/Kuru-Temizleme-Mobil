import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_theme/screens/MorePage.dart';
class FreeServicesPage extends StatelessWidget {
  const FreeServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
        home: freeServicesPage(),
    );
  }
}
class freeServicesPage extends StatefulWidget {
  const freeServicesPage({Key? key}) : super(key: key);

  @override
  _freeServicesPageState createState() => _freeServicesPageState();
}

class _freeServicesPageState extends State<freeServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.green,
          onPressed: openMorePage,
        ),

      ),
      body:
      Container(

        child:
        Align(
          alignment: FractionalOffset.bottomCenter,
          child: Row(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image(
                    image: AssetImage("asset/images/gift-box.png"),
                    alignment: Alignment.topCenter,
                  ),
                  SizedBox(height: 25,),
                Text("Ücretsiz Kuru Temizleme, Çamaşır, \n Ütü ve Ayakkabı Bakımı", style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.w700,
              ), textAlign: TextAlign.center),
              SizedBox(height: 10,),

              Text("20 TL gönder 20 TL kazan", style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w700,

              ),),
                  SizedBox(height: 10,),

              Text("Promosyon Kodunu Gönder", style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w700,

              ),),
                  SizedBox(height: 10,),
              Text("AAAAA", style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.w700,

              ),),
                  SizedBox(height: 10,),
              InkWell(
                onTap: () {
                },

                child: Container(
                  width: MediaQuery.of(context).size.width*0.80,
                  padding: EdgeInsets.all(5),
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
              ),],),
            ],
          ),),
      ),

    );
  }
  void openMorePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => MorePage()));
  }
}
