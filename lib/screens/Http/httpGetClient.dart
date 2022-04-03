import 'dart:convert';
import 'package:flutter_application_3/screens/Http/httpget.dart';
import 'package:http/http.dart' as http;


class HttpGetClient{
  
  Future<List<HttpGet>> fetchFromNet()async{
    var url = Uri.parse('https://my-flutter-server.herokuapp.com/');
    var response = await http.get(url);
    if (response.statusCode==200){
      var data = jsonDecode(response.body);
      return List.from(data.map((e)=>HttpGet.dataFromJson(e)));

    }
    throw Exception('An Error Occured');    
    }
}