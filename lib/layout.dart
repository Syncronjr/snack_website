import 'dart:html';

import 'package:flutter/material.dart';
import 'package:snack_website/helpers/responsiveness.dart';
import 'package:snack_website/widgets/large_screen.dart';
import 'package:snack_website/widgets/medium_screen.dart';
import 'package:snack_website/widgets/small_screen.dart';
import 'package:snack_website/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: MediumScreen(),
        vsmallScreen: SmallScreen(),
      ),
    );
  }
}
