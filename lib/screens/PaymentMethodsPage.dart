import 'package:flutter/material.dart';
import 'package:app_theme/screens/MorePage.dart';
import 'package:app_theme/screens/AddPaymentMethodPage.dart';


class PaymentMethodsPage extends StatelessWidget {
  const PaymentMethodsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: paymentMethodsPage(),
    );
  }
}

class paymentMethodsPage extends StatefulWidget {
  const paymentMethodsPage({Key? key}) : super(key: key);

  @override
  _paymentMethodsPageState createState() => _paymentMethodsPageState();
}

class _paymentMethodsPageState extends State<paymentMethodsPage> {
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

        title: Text("Ödeme Metodlarım", style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),),
      ),
      body:  Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/images/bg.png"),
              fit: BoxFit.fill,

            )
        ),
        child:
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Row(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>AddPaymentMethodPage()));
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
    Navigator.push(context, MaterialPageRoute(builder: (context) => MorePage()));
  }
}
