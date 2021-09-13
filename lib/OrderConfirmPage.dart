import 'package:flutter/material.dart';
import 'package:app_theme/HomePage.dart';
class OrderConfirmPage extends StatelessWidget {
  const OrderConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: orderConfirmPage(),
    );
  }
}
class orderConfirmPage extends StatefulWidget {
  const orderConfirmPage({Key? key}) : super(key: key);

  @override
  _orderConfirmPageState createState() => _orderConfirmPageState();
}

class _orderConfirmPageState extends State<orderConfirmPage> {
  bool isSwitched = false;
  String valueChoose = "";
  final items = [
    "Address 1", "Address 2", "Address 3", "Address 4",
  ];
  String? value;

  String paymentChoose = "";
  final paymentMethods = [
    "Card 1", "Card 2", "Card 3", "Card 4",
  ];
  String? paymentValue;

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
          onPressed: openHomePage,
        ),

        title: Text("Siparişi Tamamla", style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontFamily: 'sfpro',
        ),),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/images/bg.png"),
              fit: BoxFit.fill,

            )
        ),
        padding: EdgeInsets.all(20),
        child:  Column(
          children: [
                Text("Ödeme Yöntemi", style: TextStyle(
                   fontSize: 15,
                   color: Colors.black,
                   fontWeight: FontWeight.w700,
                  fontFamily: 'sfpro',
                   ),),
            DropdownButton <String> (
              isExpanded: true,
              hint: Text("Lütfen bir ödeme metodu seçin"),
              value: paymentValue,
              items: paymentMethods.map(buildPaymentMethodItem).toList(),
              onChanged: (value)=> setState( () => this.paymentValue = value),
            ),
            SizedBox(height: 8,),
            Text("Adres", style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: 'sfpro',
            ),),
            DropdownButton <String> (
              isExpanded: true,
              hint: Text("Lütfen bir adres seçin"),
              value: value,
              items: items.map(buildMenuItem).toList(),
              onChanged: (value)=> setState( () => this.value = value),
            ),
            SizedBox(height: 8,),
            Text("Çift yönlü premium vale servisi ücreti 7.90TL'dir.", style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontFamily: 'sfpro',
            ),),
            SizedBox(height: 8,),
            Row(
            children: [
              Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  print(isSwitched);
                });
              },
              activeTrackColor: Colors.green,
              activeColor: Colors.green,

            ),
            Text("Satış sözleşmesini okudum ve kabul ediyorum.", style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontFamily: 'sfpro',
            ),),],),
            SizedBox(height: 300,),
            Text("Promosyon kodu ekleyin.", style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontFamily: 'sfpro',
            ),),
            SizedBox(height: 10,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>OrderConfirmPage()));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Center(
                  child: Text("Sipariş Ver", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),),
                ),
              ),
            ),

               ],
             ),
        ),
    );
  }
  DropdownMenuItem <String> buildMenuItem(String item) =>
      DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: 'sfpro',
          ),
        ),
      );

  DropdownMenuItem <String> buildPaymentMethodItem(String item2) =>
      DropdownMenuItem(
        value: item2,
        child: Text(
          item2,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: 'sfpro',
          ),
        ),
      );

  void openHomePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}

