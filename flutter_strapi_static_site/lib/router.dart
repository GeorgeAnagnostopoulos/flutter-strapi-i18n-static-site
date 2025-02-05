
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import './presentation/main_page/main_page_view.dart';

import 'presentation/products_page/products_page_view.dart';
import 'presentation/services_page/services_page_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      pageBuilder: (BuildContext context, GoRouterState state) =>
          CustomTransitionPage<void>(
            key: state.pageKey,
            child: const MainPageView(),
            transitionsBuilder: (
                BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child,
                ) =>
                ScaleTransition(
                  scale: animation,
                  child: child,
                ),
          ),
    ),
    GoRoute(
      path: "/products",
      pageBuilder: (BuildContext context, GoRouterState state) =>
          CustomTransitionPage<void>(
            key: state.pageKey,
            child: const ProductsPageView(),
            transitionsBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation, Widget child) =>
                RotationTransition(turns: animation, child: child,),
          ),
    ),
    GoRoute(
      path: "/services",
      pageBuilder: (BuildContext context, GoRouterState state) =>
          CustomTransitionPage<void>(
            key: state.pageKey,
            child: const ServicesPageView(),
            transitionsBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation, Widget child) =>
                RotationTransition(turns: animation, child: child,),
          ),
    ),
  ],
);