import 'package:flutter/material.dart';

class ResponseWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreem;
  final Widget? smoolScream;

  const ResponseWidget(
      {Key? key,
      required this.largeScreen,
      this.mediumScreem,
      this.smoolScream})
      : super(key: key);

  static bool isLargeScreeem(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isMediumScream(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isSmoolScreem(BuildContext context) {
    return MediaQuery.of(context).size.width <= 935;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return largeScreen;
      } else if (constraints.maxWidth <= 1200 && constraints.maxWidth >= 925) {
        return mediumScreem ?? largeScreen;
      } else {
        return smoolScream ?? largeScreen;
      }
    });
  }
}
