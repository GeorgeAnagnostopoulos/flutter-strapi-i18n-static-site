import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../layout/layout_page.dart';
import './main_page_view_model.dart';

class MainPageView extends ConsumerStatefulWidget {
  const MainPageView({super.key});

  @override
  ConsumerState createState() => _MainPageViewState();
}

class _MainPageViewState extends ConsumerState<MainPageView> {
  @override
  Widget build(BuildContext context) {
    final locale = context.locale.languageCode;
    final posts = ref.watch(mainPageViewModelProvider(locale));
    return LayoutPage(
      title: "Blog Posts",
      child: posts.when(
        data: (data) => ListView.builder(
          itemCount: data?.length,
          itemBuilder: (BuildContext context, int index)
          => ListTile(
            title: Text(data![index].title),
            subtitle: Text(data[index].contents),
          ),
        ),
        error: (error, _) => Text(error.toString()),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}

class _MenuItemWidget extends StatelessWidget {
  const _MenuItemWidget({
    required this.title,
    required this.description,
    required this.url,
  });

  final String title;
  final String description;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.grab,
          child: GestureDetector(
            onTap: () => context.go(url),
            child: Text(
              title,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
      ],
    );
  }
}
