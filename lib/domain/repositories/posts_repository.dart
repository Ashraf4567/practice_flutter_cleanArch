
import 'package:posts_clean_arch/domain/entities/post.dart';

abstract class PostRepository {
  Future<List<Post>> getPosts();
}

