import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_game/apps/routes/router_name.dart';
import 'package:quiz_game/pages/article/article_page.dart';
import 'package:quiz_game/pages/category/category_page.dart';
import 'package:quiz_game/pages/home/home_page.dart';

class RouterConfigCustom {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: RoutersPath.homePath,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
        routes: <RouteBase>[
          GoRoute(
            name: RoutersName.categoryName,
            path: RoutersPath.categoryPath,
            builder: (BuildContext context, GoRouterState state) {
              return const CategoryPage();
            },
            routes: <RouteBase>[
              GoRoute(
                name: RoutersName.articleName,
                path: RoutersName.articleName,
                builder: (BuildContext context, GoRouterState state) {
                  return const ArticlePage();
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
