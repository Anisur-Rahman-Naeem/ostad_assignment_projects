import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < 640) {
      return mobile;
    } else if (width >= 640 && width <= 1008) {
      return tablet;
    } else if (width > 1008  && width <1150) {
      return desktop;
    }
    return desktop;
  }
}
