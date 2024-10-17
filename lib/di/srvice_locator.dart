import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:posts_clean_arch/data/repositories/posts_repository_impl.dart';
import 'package:posts_clean_arch/domain/repositories/posts_repository.dart';
import 'package:posts_clean_arch/domain/usecases/get_posts.dart';
import 'package:posts_clean_arch/presentation/blocs/post_bloc.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<http.Client>(() => http.Client());
  getIt.registerLazySingleton<PostRepository>(
      () => PostsRepositoryImpl(client: getIt()));
  getIt.registerLazySingleton(() => GetPosts(getIt<PostRepository>()));
  getIt.registerLazySingleton(() => PostBloc(getIt<GetPosts>()));
}
