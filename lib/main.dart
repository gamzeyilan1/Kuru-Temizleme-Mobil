import 'package:app_theme/providers/login_provider.dart';
import 'package:app_theme/screens/SignUpPage.dart';
import 'package:app_theme/service/auth_service.dart';
import 'package:flutter/material.dart';
import 'screens/LoginPage.dart';
import 'dart:async';
import 'providers/services_provider.dart';
import 'package:provider/provider.dart';
import 'providers/order_date_provider.dart';
import 'screens/HomePage.dart';
import 'screens/ForgotPasswordPage.dart';
import 'dart:developer';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Services(),
        ),
        Provider(create: (context) => Dates()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'sfpro',
        ),
        home: FutureBuilder(

          future: AuthService.getToken(),
          builder: (_, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasData) {
              return HomePage();
            } else {
              return LoginPage();
            }
          },
        ),
          routes: {  log('aaaaa');
            '/home': (_) => HomePage(),
            '/login': (_) => new LoginPage(),
            '/signup': (_) => new SignUpPage(),
            '/forgot': (_) => new ForgotPasswordPage(),
          }
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _userId = "";

  @override
  void initState() {
    super.initState();
    // Timer(Duration(seconds: 3),);
    Timer(Duration(seconds: 3), openOnBoard);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          color: Colors.green,
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/images/loadingLogo.png')),
              ),
            ),
          )),

    );
  }

  void openOnBoard() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
