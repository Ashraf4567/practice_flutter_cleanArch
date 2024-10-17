import 'package:flutter/material.dart';
import 'package:posts_clean_arch/domain/entities/post.dart';

Widget PostsListView(List<Post> posts) {
  return ListView.builder(
    itemCount: posts.length,
    itemBuilder: (context, index) {
      final post = posts[index];
      return Dismissible(
        key: Key(post.id.toString()),
        onDismissed: (_) {
          // Handle dismissal if needed
        },
        direction: DismissDirection.horizontal,
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  post.body,
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        // TODO: Implement read more functionality
                      },
                      child: Text('Read More',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary)),
                    ),
                    Icon(Icons.arrow_forward,
                        size: 18, color: Theme.of(context).colorScheme.primary),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
