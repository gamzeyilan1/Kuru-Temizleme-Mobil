import 'package:app_theme/EditProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:app_theme/MorePage.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: profilePage(),
    );
  }
}
class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
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

        title: Text("Profil", style: TextStyle(
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
      child: Column(
        children: [
          Row(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
                },

                child: Container(
                  padding: EdgeInsets.all(5),
                  height: 50,
                  width: MediaQuery.of(context).size.width,


                  child: Container(
                      child:
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 3),
                                child: Icon(Icons.person, size: 19,  color: Colors.green, ),),

                            ),
                            TextSpan(
                              text: "İsim & Soyisim",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,

                              ),
                            ),
                            WidgetSpan(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.arrow_forward_ios, size: 19,  color: Colors.green,   ),),

                            ),
                          ],
                        ),
                      )
                  ),
                ),
              ),

            ],
          ),

          Row(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
                },

                child: Container(
                  padding: EdgeInsets.all(5),
                  height: 50,
                  width: MediaQuery.of(context).size.width,

                  child: Container(
                      child:
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 3),
                                child: Icon(Icons.mail_outline, size: 19,  color: Colors.green,   ),),

                            ),
                            TextSpan(
                              text: "E-mail",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,

                              ),
                            ),
                            WidgetSpan(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.arrow_forward_ios, size: 19,  color: Colors.green,   ),),

                            ),
                          ],
                        ),
                      )
                  ),
                ),
              ),

            ],
          ),

          Row(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
                },

                child: Container(
                  padding: EdgeInsets.all(5),
                  height: 50,
                  width: MediaQuery.of(context).size.width,

                  child: Container(
                      child:
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 3),
                                child: Icon(Icons.phone_android, size: 19,  color: Colors.green,   ),),

                            ),
                            TextSpan(
                              text: "Telefon",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,

                              ),
                            ),
                            WidgetSpan(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.arrow_forward_ios, size: 19,  color: Colors.green,   ),),
                            ),
                          ],
                        ),
                      )
                  ),
                ),
              ),

            ],
          ),
        ],
      ),),
    );
  }
  void openMorePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => MorePage()));
  }
}

