import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_clean_arch/domain/entities/post.dart';
import 'package:posts_clean_arch/presentation/blocs/post_bloc.dart';
import 'package:posts_clean_arch/presentation/widgets/post_list_item.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: const Text('Posts'),
              floating: true,
              snap: true,
            ),
          ];
        },
        body: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            if (state is PostInitial) {
              return _buildInitialView(context);
            } else if (state is PostLoading) {
              return _buildLoadingView();
            } else if (state is PostLoaded) {
              return PostsListView(state.posts);
            } else if (state is PostError) {
              return _buildErrorView(state.message);
            }
            return const SizedBox.shrink();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<PostBloc>().add(const FetchPostsEvent());
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Widget _buildInitialView(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Press button to fetch posts'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              context.read<PostBloc>().add(const FetchPostsEvent());
            },
            child: const Text('Fetch Posts'),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingView() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildErrorView(String message) {
    return Center(
      child: Text('Error: $message'),
    );
  }
}
