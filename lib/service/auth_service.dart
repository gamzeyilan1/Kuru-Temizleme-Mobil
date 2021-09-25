import 'package:http/http.dart' as http;
import 'package:app_theme/flutter_session.dart';
import 'dart:developer';

class AuthService {
  final baseUrl = 'http://localhost:4000';

  // ignore: non_constant_identifier_names
  static final SESSION = FlutterSession();

  Future<dynamic> register(String email, String password) async {
    try {
      var res = await http.post(Uri.parse('$baseUrl/auth/register'), body: {
        'email': email,
        'password': password,
      });

      return res.body;
    } finally {

      // done you can do something here
    }
  }

  Future<dynamic> login(String email, String password) async {
    try {
      var res = await http.post(
        Uri.parse('$baseUrl/auth/login',),
        body: {
          'email': email,
          'password': password,
          'token': 'my_token',

        },
      );

      return res.body;
    } finally {
      // you can do something here
    }
  }

  static setToken(String token, String refreshToken) async {
    _AuthData data = _AuthData(token, refreshToken, clientId: '');
    await SESSION.set('tokens', data);
    // await storage.read(key: data);
  }

  static Future<Map<String, dynamic>> getToken() async {
    return await SESSION.get('tokens');
  }

  static removeToken()async {
    await SESSION.prefs.clear();
  }
}

class _AuthData {
  String token, refreshToken, clientId;
  _AuthData(this.token, this.refreshToken, {required this.clientId});

  // toJson
  // required by Session lib
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['token'] = token;
    data['refreshToken'] = refreshToken;
    data['clientId'] = clientId;
    return data;
  }
}
