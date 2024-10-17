import 'package:bloc/bloc.dart';
import 'package:posts_clean_arch/domain/entities/post.dart';
import 'package:posts_clean_arch/domain/usecases/get_posts.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final GetPosts getPosts;

  PostBloc(this.getPosts) : super(PostInitial()) {
    on<FetchPostsEvent>(_onFetchPosts);
    on<RefreshPostsEvent>(_onRefreshPosts);
  }

  Future<void> _onFetchPosts(
      FetchPostsEvent event, Emitter<PostState> emit) async {
    emit(const PostLoading());
    try {
      final List<Post> posts = await getPosts.execute();
      emit(PostLoaded(posts));
    } catch (e) {
      emit(PostError(e.toString()));
    }
  }

  Future<void> _onRefreshPosts(
      RefreshPostsEvent event, Emitter<PostState> emit) async {
    emit(const PostLoading());
    try {
      final List<Post> posts = await getPosts.execute();
      emit(PostLoaded(posts));
    } catch (e) {
      emit(PostError(e.toString()));
    }
  }
}
