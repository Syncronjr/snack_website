import 'package:flutter/material.dart';
import 'package:snack_website/helpers/responsiveness.dart';
import 'package:snack_website/widgets/large_screen.dart';
import 'package:snack_website/widgets/medium_screen.dart';
import 'package:snack_website/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: MediumScreen(),
        vsmallScreen: SmallScreen(),
      ),
    );
  }
}
