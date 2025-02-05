

import '../model/blog_post.dart';

abstract interface class GetBlogPostsListUseCase {

  Future<List<BlogPost>?> build();
}