import 'package:flutter/material.dart';
import 'package:app_theme/screens/LoginPage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signUpPage(),
    );
  }
}

class signUpPage extends StatefulWidget {
  const signUpPage({Key? key}) : super(key: key);

  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
        body: Container(

          padding: EdgeInsets.all(20),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40, ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/images/logo.png')
                    )
                ),
              ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Üye Olun", style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                        fontWeight: FontWeight.w700,

                      ),
                      ),
                      SizedBox(height: 10, ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Lütfen bilgi girin.';
                          }},

                        decoration: InputDecoration(
                            labelText: "İsim"
                        ),
                      ),
                      TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bilgi girin.';
                            }},
                        decoration: InputDecoration(
                            labelText: "Telefon"
                        ),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Lütfen bilgi girin.';
                          }},
                        decoration: InputDecoration(
                            labelText: "Email"
                        ),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Lütfen bilgi girin.';
                          }},
                        decoration: InputDecoration(
                            labelText: "Şifre"
                        ),
                      ),

                      SizedBox(height: 25,),
                      InkWell(
                        onTap: (){},
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: Colors.green,
                            ),
                            child: Center(
                              child: Text("ÜYE OL", style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w700,

                              ),),
                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                  )

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hesabınız var mı?", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,

                  ),),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: openLoginPage,
                    child: Text("GİRİŞ YAP", style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,

                    ),),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        )
    );
  }

  void openLoginPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
