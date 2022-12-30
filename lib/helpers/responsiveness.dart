import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int vsmallScreenSize = 120;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  final Widget vsmallScreen;
  const ResponsiveWidget(
      {super.key,
      required this.largeScreen,
      required this.mediumScreen,
      required this.smallScreen,
      required this.vsmallScreen});

  static bool isvSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < vsmallScreenSize;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= vsmallScreenSize &&
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;
      if (_width >= largeScreenSize) {
        return largeScreen;
      } else if (_width < largeScreenSize && _width >= mediumScreenSize) {
        return mediumScreen;
      } else {
        return smallScreen;
      }
    });
  }
}
