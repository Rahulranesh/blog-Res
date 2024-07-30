import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://192.168.245.187';

  static Future<http.Response> loginUser(String email, String password) async {
    try {
      final response = await http.post(Uri.parse('$baseUrl/api/users/login'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            'email': email,
            'password': password,
          }));
      return response;
    } catch (e) {
      print('Error logging in: $e');
      rethrow;
    }
  }

  static Future<http.Response> registerUser(
      String username, String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/api/users/add-user'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'username': username,
          'email': email,
          'password': password,
        }),
      );
      return response;
    } catch (e) {
      print('Error registering user: $e');
      rethrow;
    }
  }

  static Future<http.Response> createPost(
      String title, String content, String category, String username) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/api/posts'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'title': title,
          'content': content,
          'category': category,
          'username': username,
        }),
      );
      return response;
    } catch (e) {
      print('Error creating post: $e');
      rethrow;
    }
  }

  static Future<http.Response> fetchPosts() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/api/posts'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      return response;
    } catch (e) {
      print('Error fetching posts: $e');
      rethrow;
    }
  }
}
