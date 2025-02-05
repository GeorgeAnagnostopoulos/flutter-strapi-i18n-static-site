
import '../model/blog_post.dart';

abstract interface class BlogPostRepository {

  Future<List<BlogPost>> build();
}