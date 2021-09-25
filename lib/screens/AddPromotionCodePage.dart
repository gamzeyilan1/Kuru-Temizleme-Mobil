import 'package:flutter/material.dart';
import 'package:app_theme/screens/MorePage.dart';

class AddPromotionCodePage extends StatelessWidget {
  const AddPromotionCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: addPromotionCodePage(),
    );
  }
}

class addPromotionCodePage extends StatefulWidget {
  const addPromotionCodePage({Key? key}) : super(key: key);

  @override
  _addPromotionCodePageState createState() => _addPromotionCodePageState();
}

class _addPromotionCodePageState extends State<addPromotionCodePage> {
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
          onPressed: openMorePage,
        ),

        title: Text("Promosyon Kodu Ekle", style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700,

        ),),
      ),
      body: Container(

        child: Align(
          alignment: Alignment.center,
          child:
          Container(
            width: MediaQuery.of(context).size.width*0.80,
          margin: EdgeInsets.only(top: 20),
          child: Column(
           children: [
          Text("İndirimler ve kampanyalardan yararlanmak için bir promosyon kodu girebilirsiniz.", style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
            fontWeight: FontWeight.w500,

          ),),
          SizedBox(height: 20,),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Lütfen bilgi girin.';
              }},
            decoration: const InputDecoration(
              labelText: 'Promosyon kodunuzu girin',
            ),
            onSaved: (String? value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },

          ),
             SizedBox(height: 460,),
             Row(

               children: [
                 InkWell(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) =>AddPromotionCodePage()));
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
                              
                             ],
                           ),
                         )
                     ),
                   ),
                 ),
               ],
             ),
        ],),),),

      ),
    );
  }
  void openMorePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => MorePage()));
  }
}
