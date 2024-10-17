part of 'post_bloc.dart';

sealed class PostEvent {
  const PostEvent();
}

final class FetchPostsEvent extends PostEvent {
  const FetchPostsEvent();
}

final class RefreshPostsEvent extends PostEvent {
  const RefreshPostsEvent();
}
