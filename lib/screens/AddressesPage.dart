import 'package:app_theme/screens/AddNewAddressPage.dart';
import 'package:flutter/material.dart';
import 'package:app_theme/screens/HomePage.dart';
import 'package:app_theme/screens/MorePage.dart';

class AddressesPage extends StatelessWidget {
  const AddressesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: addressesPage(),
    );
  }
}
class addressesPage extends StatefulWidget {
  const addressesPage({Key? key}) : super(key: key);

  @override
  _addressesPageState createState() => _addressesPageState();
}

class _addressesPageState extends State<addressesPage> {
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

        title: Text("Adreslerim", style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700,

        ),),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.green,
            onPressed: openAddNewAddressPage,
          ),
        ],
      ),
      body: Container(

            child: ListView(

          children: [
          Row(
            children: <Widget>[
              InkWell(
                onTap: () {
                },

                child: Container(
                  padding: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,


                  child: ListView(

                    children: [
                     addressWidget("Address 1", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                     addressWidget("Address 2", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ],),

                  ),
                ),
            ],

          ),

        ],
      ),),



    );
  }
  InkWell addressWidget(String name, String detail){
    return InkWell(
      child:
      Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,

                      ),),
                      Container(
                        width: MediaQuery.of(context).size.width*0.8,
                      child: Text(detail, style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,

                      ),),),
                    ], ),



                ],
              ),
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
    );
  }
  void openMorePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => MorePage()));
  }
  void openAddNewAddressPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewAddressPage()));
  }
}
