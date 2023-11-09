import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


Future<List<dynamic>> dados_categoria() async{
  print("future");
  final response = await http.get(Uri.parse('http://localhost:3000/categoria'));
  if (response.statusCode == 200) {
     print("200");
    var jsonResponse = convert.jsonDecode(response.body);
    return jsonResponse;
  } else {
     print("erro");
    throw Exception('Falha ao ler categorias!');
  }
}