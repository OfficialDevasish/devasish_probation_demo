import'package:http/http.dart'as http;
import 'dart:convert';

class APIcall {

final apiBaseUri = "https://www.tecocraft.com/eatenglish/test_category.json";


Future<dynamic>GetRequest(String endpoint) async {
  var apiUrl = Uri.parse(apiBaseUri +  endpoint);
  try{
    final apiResponse = await http.get(apiUrl);
    if(apiResponse.statusCode==200) {
      print('${json.decode(apiResponse.body) }');
      final finalResponse = json.decode(apiResponse.body);
      return finalResponse;
    }
  }
  catch (e) {
    throw e;
  }
}
getRequest(){

}

}