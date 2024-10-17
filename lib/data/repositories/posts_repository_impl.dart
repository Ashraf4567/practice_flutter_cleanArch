import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:posts_clean_arch/data/models/post_model.dart';
import 'package:posts_clean_arch/domain/entities/post.dart';
import 'package:posts_clean_arch/domain/repositories/posts_repository.dart';

class PostsRepositoryImpl implements PostRepository {

  final http.Client client;

  PostsRepositoryImpl({required this.client});

  @override
  Future<List<Post>> getPosts() async {
    final respose = await client.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts')
    );

    if (respose.statusCode == 200) {
      final List<dynamic> body = jsonDecode(respose.body);
      return body.map((dynamic json) => PostModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }

}