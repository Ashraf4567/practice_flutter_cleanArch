import 'package:posts_clean_arch/domain/entities/post.dart';
import 'package:posts_clean_arch/domain/repositories/posts_repository.dart';

class GetPosts {
  final PostRepository repository;

  GetPosts(this.repository);

  Future<List<Post>> execute() async {
    return await repository.getPosts();
  }
}
