import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../layout/layout_page.dart';
import './services_page_view_model.dart';

class ServicesPageView extends ConsumerStatefulWidget {
  const ServicesPageView({super.key});

  @override
  ConsumerState<ServicesPageView> createState() => _ServicesPageViewState();
}

class _ServicesPageViewState extends ConsumerState<ServicesPageView> {
  @override
  Widget build(BuildContext context) {
    final locale = context.locale.languageCode;
    final services = ref.watch(servicesPageViewModelProvider(locale));
    return LayoutPage(
      title: "Services",
      child: Center(
        child: services.when(
          data: (data) => ListView.builder(
            itemCount: data!.length,
            itemBuilder: (BuildContext context, int index)
              => ListTile(
                title: Text(data[index].name),
                subtitle: Text(data[index].description),
                titleTextStyle: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0,),
              ),
          ),
          error: (error,_) =>Text(error.toString()),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
