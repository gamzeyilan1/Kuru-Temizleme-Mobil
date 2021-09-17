import 'package:app_theme/screens/OrderConfirmPage.dart';
import 'package:flutter/material.dart';
import 'package:app_theme/screens/HomePage.dart';
import 'package:app_theme/screens/OrderConfirmPage.dart';
import 'package:app_theme/screens/MorePage.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: orderPage(),

    );
  }
}

class orderPage extends StatefulWidget {
  const orderPage({Key? key}) : super(key: key);

  @override
  _orderPageState createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {
  String valueChoose = "";
  final items = [
    "Address 1", "Address 2", "Address 3", "Address 4",
  ];
  String? value;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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

        title: Text("Sipariş Oluştur", style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700,

        ),),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/images/bg.png"),
              fit: BoxFit.fill,

            )
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Teslimat", style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w700,

            ),),
            SizedBox(height: 8,),
            Wrap(
              children:[

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      dateWidget("Pazartesi", "09.00-16.00", true),
                      dateWidget("Salı", "09.00-16.00", false),
                      dateWidget("Çarşamba", "09.00-16.00", false),
                      dateWidget("Perşembe", "09.00-16.00", false),
                      dateWidget("Cuma", "09.00-16.00", false),
                      dateWidget("Pazartesi", "09.00-16.00", false),
                      dateWidget("Salı", "09.00-16.00", false),
                    ],
                  ),
                ),

              ],
            ),

            SizedBox(height: 8,),
            Text("Adres", style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w700,

            ),),
            SizedBox(height: 8,),
            DropdownButton <String> (
              isExpanded: true,
              hint: Text("Lütfen bir adres seçin"),
              value: value,
              items: items.map(buildMenuItem).toList(),
              onChanged: (value )=> setState( () => this.value = value),
            ),

            SizedBox(height: 8,),
            Text("Sipariş Notu", style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w700,

            ),),
            SizedBox(height: 8,),
        TextField(
          decoration: const InputDecoration(
              hintText: 'Sipariş notunuzu girin',
          ),
        ),
            SizedBox(height: 20,),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                categoryWidget( "hanger","Kuru Temizleme", true),
                categoryWidget( "iron","Ütü", false),
                categoryWidget( "washing-machine","Yıkama", false),
                categoryWidget( "shoes","Ayakkabı", false),
                categoryWidget( "hand-bag","Çanta", false),
              ],
            ),
            SizedBox(height: 20,),
            Text("Miminum sipariş tutarı indirimler dahil 149 TL olmalıdır.", style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w500,

            ),),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>OrderConfirmPage()));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                height: 70,
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

          ),
        ),
      );
  InkWell dateWidget(String day, String hour, bool isActive ){
    var _isActive = isActive;
    return InkWell(
    onTap: () {
    setState(()
    {_isActive = !_isActive; }
    );
    },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(20),

        decoration: BoxDecoration(
          color:(_isActive) ? Colors.green: Colors.grey.withOpacity(0.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(day, style: TextStyle(
            color: (_isActive) ? Colors.white : Colors.black,
            fontSize: 15,
          ), ),
          Text(hour, style: TextStyle(
            color: (_isActive) ? Colors.white : Colors.black,
            fontSize: 15,
          ), ),
          ],
        ),
      ),
    );
  }

  Column categoryWidget(String img, String name, bool isActive){

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Container(
          height: 60,
          width: 60,

          decoration: BoxDecoration(

            color: Colors.grey.withOpacity(0.3),
            shape: BoxShape.circle,
            border: Border.all(width: 1, color: Colors.green),
          ),

          child: Center(
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/images/$img.png"),
                )
              ),
            ),
          ),
        ),
        SizedBox(height: 8,),
        Text(name, style: TextStyle(
          fontSize: 12,
          color: Colors.grey,
          fontWeight: FontWeight.w400,
         ), ),
      ],
    );

  }

  void openHomePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
  }


}
