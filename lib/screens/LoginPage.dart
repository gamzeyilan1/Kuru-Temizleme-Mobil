import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:app_theme/screens/SignUpPage.dart';
import 'package:app_theme/screens/HomePage.dart';
//
// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: loginPage(),
//     );
//   }
// }

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
body: Container(
  decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage("asset/images/bg.png")
      )
  ),
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
            Text("Hoşgeldiniz!", style: TextStyle(
               fontSize: 30,
               color: Colors.green,
               fontWeight: FontWeight.w700,

           ),),
            Text("Lütfen Giriş Yapın.", style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(height: 10, ),
            TextField(
              decoration: InputDecoration(
                labelText: "Email"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Şifre"
              ),
            ),
            SizedBox(height: 3, ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Şifrenizi mi unuttunuz?", style: TextStyle(
                  color: Colors.grey,
                ),)
              ],
            ),
            SizedBox(height: 25,),
            InkWell(
              onTap: openHomePage,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text("GİRİŞ", style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,

                  ),),
                )
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: Colors.grey,

                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text("VEYA", style: TextStyle(color: Colors.grey)),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    color: Colors.grey,

                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,

                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("asset/images/googleLogo.png"),
                      )
                    ),
                  )
                ),
                SizedBox(width: 20,),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,

                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("asset/images/fbLogo.png"),
                      )
                    ),
                  )
                ),
              ],
            )
          ],
        )

      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hesabınız mı yok?", style: TextStyle(
              color: Colors.grey,
              fontSize: 16,

          ),),
          SizedBox(width: 5,),
          InkWell(
            onTap: openSignUpPage,
            child: Text("ÜYE OL", style: TextStyle(
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
  void openSignUpPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignUpPage()));
  }

 void openHomePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
 }
}
