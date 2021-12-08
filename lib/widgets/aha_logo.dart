import 'package:flutter/material.dart';

class AhaLogo extends StatelessWidget {
  const AhaLogo();

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/aha_logo.png",
        height: 70, fit: BoxFit.cover);
  }
}
