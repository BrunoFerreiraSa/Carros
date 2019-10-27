import 'dart:convert';
import 'package:carros/pages/api_response.dart';
import 'package:carros/pages/login/usuario.dart';
import 'package:carros/utils/prefs.dart';
import 'package:http/http.dart' as http;

class LoginApi {

  static Future<ApiResponse<Usuario>> login(String login, String senha) async {
    try {
      var url = 'https://carros-springboot.herokuapp.com/api/v2/login';

      Map<String, String> headers = {"Content-Type": "application/json"};

      Map params = {
          "username": login,
          "password": senha,
      };

      String s = json.encode(params);

      var response = await http.post(url, body: s, headers: headers);

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      Map mapResposnse = json.decode(response.body); //parser de objeto json

      if(response.statusCode == 200){

      final user = Usuario.fromJson(mapResposnse);
      
      user.save();

      return ApiResponse.ok(user);
      }

      return ApiResponse.error(mapResposnse["error"]);

    } catch(error, exception){
      print("Erro no login $error > $exception");

      return ApiResponse.error(error);
    }
  }
}
