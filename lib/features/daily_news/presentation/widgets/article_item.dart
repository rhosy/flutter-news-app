import 'package:flutter/material.dart';
import 'package:news_app/core/constants/app_color.dart';
import 'package:news_app/core/constants/methods.dart';
import 'package:intl/intl.dart';

class ArticleItem extends StatelessWidget {
  final String title;
  final String publishedAt;
  final VoidCallback? onTap;

  const ArticleItem({
    super.key,
    required this.title,
    required this.publishedAt,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 8),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: secondaryColor.withOpacity(0.2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            verticalSpace(8),
            Text(
              DateFormat('EEEE, dd MMMM, HH:mm')
                  .format(DateTime.parse(publishedAt)),
              style: const TextStyle(
                color: tertiaryColor,
                fontSize: 12,
              ),
            ),
            //Text("${DateFormat("dd MMM Y").parse(publishedAt)}")
          ],
        ),
      ),
    );
  }
}
