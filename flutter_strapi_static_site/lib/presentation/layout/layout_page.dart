import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import './layout_page_view_model.dart';


class LayoutPage extends ConsumerWidget {
  const LayoutPage({
    super.key,
    required this.child,
    required this.title,
  });

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = context.locale.languageCode;
    final appMenu = ref.watch(layoutPageViewModelProvider(locale));

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter/Strapi Static Site"),
        actions: [
          ...appMenu.when(
            data: (data) => data.menuItems!
                .map((m) => _MenuItemWidget(
                      title: m.title,
                      description: m.description,
                      url: m.url,
                    ))
                .toList(),
            error: (error, __) => [
              Text(error.toString()),
            ],
            loading: () => [
              const CircularProgressIndicator(),
            ],
          ),
          PopupMenuButton(
            tooltip: "Select",
            //context.tr('selectLanguage'),
            itemBuilder: (context) => context.supportedLocales
                .map<PopupMenuEntry<Locale>>((e) => PopupMenuItem(
                      value: e,
                      child: Text(
                        e.languageCode,
                        style: TextStyle(
                          color: e.languageCode == locale
                              ? Colors.red
                              : Colors.black,
                        ),
                      ),
                    ))
                .toList(),
            onSelected: (locale) {
              context.setLocale(locale);
            },
            initialValue: context.locale,
            icon: const Icon(Icons.language_sharp),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: child,
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
