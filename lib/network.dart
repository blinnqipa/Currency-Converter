import 'dart:convert';
import 'package:http/http.dart' as http;

var url =
    'https://free.currconv.com/api/v7/convert?apiKey=do-not-use-this-key&q=MKD_EUR&compact=y';
//To change between currencies of your choice, change MKD_EUR to anything you want (e.g. EUR_ALL)

class Network {
  Future<double> call() async {
    final response = await http.get(url);
    print(response.statusCode);
    var converted = 0.0;
    if (response.statusCode == 200) {
      var responseBody = jsonDecode(response.body);
      print(responseBody);
      print(responseBody['MKD_EUR']['val']);
      var currencyValue = responseBody['MKD_EUR']['val'];
      return currencyValue;
    }
    return converted;
  }
}
