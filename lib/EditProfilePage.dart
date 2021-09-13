import 'package:flutter/material.dart';
import 'package:app_theme/ProfilePage.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: editProfilePage(),
    );
  }
}
class editProfilePage extends StatefulWidget {
  const editProfilePage({Key? key}) : super(key: key);

  @override
  _editProfilePageState createState() => _editProfilePageState();
}

class _editProfilePageState extends State<editProfilePage> {
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
          onPressed: openProfilePage,
        ),

        title: Text("Profili Düzenle", style: TextStyle(
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
     child:  Form(
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
                        labelText: 'İsim & Soyisim',
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
                        labelText: 'E-mail',
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
                        labelText: 'Telefon',
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>ProfilePage()));
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
                                  text: "Kaydet",
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


      ),),
    );
  }
  void openProfilePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
  }
}

