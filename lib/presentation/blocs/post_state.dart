// post_state.dart
part of 'post_bloc.dart';

sealed class PostState {
  const PostState();
}

final class PostInitial extends PostState {
  const PostInitial();
}

final class PostLoading extends PostState {
  const PostLoading();
}

final class PostLoaded extends PostState {
  final List<Post> posts;

  const PostLoaded(this.posts);
}

final class PostError extends PostState {
  final String message;

  const PostError(this.message);
}
