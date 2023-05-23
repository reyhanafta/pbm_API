import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wow/model.dart';

class Repository {
  final _baseUrl = 'https://646ca2af7b42c06c3b2bae45.mockapi.io/user';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Blog> blog = it.map((e) => Blog.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
