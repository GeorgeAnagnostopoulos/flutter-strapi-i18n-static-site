import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../layout/layout_page.dart';
import './products_page_view_model.dart';

class ProductsPageView extends ConsumerStatefulWidget {
  const ProductsPageView({super.key});

  @override
  ConsumerState<ProductsPageView> createState() => _ProductsPageViewState();
}

class _ProductsPageViewState extends ConsumerState<ProductsPageView> {
  @override
  Widget build(BuildContext context) {
    final locale = context.locale.languageCode;
    final products = ref.watch(productsPageViewModelProvider(locale));

    return LayoutPage(
      title: "Products Page",
      child: Center(
        child: products.when(
          data: (data) => ListView.builder(
            itemCount: data?.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(data![index].name),
                subtitle: Text(data[index].description),
                titleTextStyle: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ),
              );
            },
          ),
          error: (err, _) => Text(err.toString()),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
