import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/app_color.dart';
import 'features/daily_news/presentation/providers/router/router_provider.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: "Berita Terbaru",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: primaryColor,
            background: primaryColor,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
          textTheme: TextTheme(
            bodyMedium: GoogleFonts.nunito(color: whiteColor),
            bodyLarge: GoogleFonts.nunito(color: whiteColor),
            labelLarge: GoogleFonts.nunito(color: whiteColor),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: primaryColor,
          )),
      routeInformationParser: ref.watch(routerProvider).routeInformationParser,
      routeInformationProvider:
          ref.watch(routerProvider).routeInformationProvider,
      routerDelegate: ref.watch(routerProvider).routerDelegate,
    );
  }
}
