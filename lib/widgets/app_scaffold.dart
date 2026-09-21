import 'package:anime_verse/widgets/gradient_background.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final PreferredSizeWidget? appbar;
  final Widget body;

  const AppScaffold({
    super.key,
    this.appbar,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    // AppScaffold mengembalikan GradientBackground sebagai dasar
    return GradientBackground(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: body,
    ),
    );
  }
}
