
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
void main(){
  print("hello");
  fetch();
  postData();
  putData();
  patchData();
  deleteData();
}


Future<void> postData() async {
  final apiUrl = 'https://dummy.restapiexample.com/api/v1/create';

  final response = await http.post(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    final jsonResponse = convert.jsonDecode(response.body);
    print('Response Data:');
    print(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}');
    print('Response Data: ${response.body}');
  }
}

Future<void> deleteData() async {
  final apiUrl = 'https://reqres.in/api/users?page=2';

  final response = await http.delete(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    final jsonResponse = convert.jsonDecode(response.body);
    print('Response Data:');
    print(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}');
    print('Response Data: ${response.body}');
  }
}
Future<void> putData() async {
  final apiUrl = 'https://reqres.in/api/users/2';

  final response = await http.put(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    final jsonResponse = convert.jsonDecode(response.body);
    print('Response Data:');
    print(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}');
    print('Response Data: ${response.body}');
  }
}
Future<void> patchData() async {
  final apiUrl = 'https://reqres.in/api/users/2';

  final response = await http.patch(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    final jsonResponse = convert.jsonDecode(response.body);
    print('Response Data:');
    print(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}');
    print('Response Data: ${response.body}');
  }
}


Future<void>fetch() async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  String url =
      'https://fakestoreapi.com/products';

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
//     var jsonResponse =
//         convert.jsonDecode(response.body) as Map<String, dynamic>;
    print("Response: ${responseData.toString()}");
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}