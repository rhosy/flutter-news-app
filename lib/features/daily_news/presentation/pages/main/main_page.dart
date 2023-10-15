import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/features/daily_news/presentation/providers/article/article_news_provider.dart';
import 'package:news_app/features/daily_news/presentation/widgets/category_item.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/methods.dart';
import 'widgets/article_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  List<String> categories = [
    'Trending',
    'Business',
    'sport',
    'Technology',
    'Health'
  ];
  String selectedCategory = 'Trending';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 35,
              ),
              horizontalSpace(8),
              Text(
                "Kaber Anyar",
                style: GoogleFonts.righteous(
                  color: whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_sharp),
            )
          ],
        ),
        body: Column(
          children: [
            verticalSpace(16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories
                    .map((e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategory = e;
                          });
                        },
                        child: CategoryItem(
                            isSelected: selectedCategory == e ? true : false,
                            title: e)))
                    .toList(),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  verticalSpace(16),
                  ...articleList(
                    articles: ref.watch(articleNewsProvider(
                        category: selectedCategory == "Trending"
                            ? ""
                            : selectedCategory)),
                  ),
                  // ...articleList(
                  //   articles: ref.watch(articlesProvider(
                  //       category:
                  //           selectedCategory == "Trending" ? "" : selectedCategory)),
                  // ),
                ],
              ),
            ),
          ],
        ));
  }
}
