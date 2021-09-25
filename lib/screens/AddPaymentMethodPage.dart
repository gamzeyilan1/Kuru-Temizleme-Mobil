import 'package:app_theme/screens/PaymentMethodsPage.dart';
import 'package:flutter/material.dart';


class AddPaymentMethodPage extends StatelessWidget {
  const AddPaymentMethodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: addPaymentMethodPage(),
    );
  }
}

class addPaymentMethodPage extends StatefulWidget {
  const addPaymentMethodPage({Key? key}) : super(key: key);

  @override
  _addPaymentMethodPageState createState() => _addPaymentMethodPageState();
}

class _addPaymentMethodPageState extends State<addPaymentMethodPage> {
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
          onPressed: openPaymentMethodPage,
        ),

        title: Text("Ödeme Metodu Ekle", style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700,

        ),),
      ),
      body: Container(

      ),
    );
  }
  void openPaymentMethodPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethodsPage()));
  }
}

