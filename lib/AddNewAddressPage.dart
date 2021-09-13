import 'package:app_theme/AddressesPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AddNewAddressPage extends StatelessWidget {
  const AddNewAddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: addNewAddressPage(),
    );
  }
}
class addNewAddressPage extends StatefulWidget {
  const addNewAddressPage({Key? key}) : super(key: key);

  @override
  _addNewAddressPageState createState() => _addNewAddressPageState();
}

class _addNewAddressPageState extends State<addNewAddressPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
          onPressed: openAddressesPage,
        ),
        title: Text("Adres Ekle", style: TextStyle(
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
      child: Form(

        key: _formKey,
        child:
        Center(
        child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width*0.80,
            padding: EdgeInsets.all(10),
            child:
           Column(
           children: [
           TextFormField(
           decoration: const InputDecoration(
           labelText: 'İl',
          ),
    onSaved: (String? value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
    },
    validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
    },
    ),
           TextFormField(
           decoration: const InputDecoration(
           labelText: 'İlçe',
          ),
    onSaved: (String? value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
    },
    validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
    },
    ),
           TextFormField(
           decoration: const InputDecoration(
           labelText: 'Adres',
          ),
    onSaved: (String? value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
    },
    validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
    },
    ),
           TextFormField(
           decoration: const InputDecoration(
           labelText: 'Adres Adı',
          ),
    onSaved: (String? value) {
    // This optional block of code can be used to run
    // code when the user saves the form.
    },
    validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
    },
    ),

           ],
           ),

          ),
          Container(
            width: MediaQuery.of(context).size.width*0.80,
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child:  InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>AddressesPage()));
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
                            text: "Ekle",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,

                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ),

            ), ),),
    // Add TextFormFields and ElevatedButton here.
    ],
      ),),


    ), ),);
  }
  void openAddressesPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => AddressesPage()));
  }



}
