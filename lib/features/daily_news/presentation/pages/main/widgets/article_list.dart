import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/features/daily_news/presentation/widgets/article_item.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../domain/entities/article.dart';

List<Widget> articleList({
  required AsyncValue<List<Article>> articles,
}) =>
    [
      Container(
        child: articles.when(
          data: (data) => SingleChildScrollView(
            child: Column(
                children: data
                    .map((e) => ArticleItem(
                          title: e.title,
                          publishedAt: e.publishedAt,
                          onTap: () {
                            _launchUrl(e.url);
                          },
                        ))
                    .toList()),
          ),
          error: (error, stackTrace) => const SizedBox(),
          loading: () => const CupertinoActivityIndicator(),
        ),
      )
    ];

Future<void> _launchUrl(String url) async {
  if (!await launchUrlString(
    url,
    mode: LaunchMode.inAppWebView,
  )) {
    throw Exception('Could not launch $url');
  }
}
