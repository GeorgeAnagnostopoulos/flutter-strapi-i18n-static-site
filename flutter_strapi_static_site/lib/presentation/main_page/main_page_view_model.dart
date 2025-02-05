

import '../../domain/model/blog_post.dart';
import '../../domain/usecase/get_blog_posts_list_use_case_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_page_view_model.g.dart';

@riverpod
class MainPageViewModel extends _$MainPageViewModel {

  @override
  Future<List<BlogPost>?> build(final String locale) async {
    final posts = ref.watch(getBlogPostsListUseCaseImplProvider).valueOrNull;
    return posts!.where((it) => it.locale == locale).toList();
  }
}