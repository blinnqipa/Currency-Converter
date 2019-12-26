import 'dart:convert';

import 'package:http/http.dart' as http;

const key = '38b5f94c0ec66a83686f97376fb2f6c5';
var url = 'http://data.fixer.io/api/symbols?access_key=38b5f94c0ec66a83686f97376fb2f6c5';

class Network{
  void call()async{
    final response = await http.get(url);
    print(response.statusCode);
    if(response.statusCode == 200){
      var whatever = jsonDecode(response.body);
      print(whatever);
    }
  }
}