import 'package:aha/style.dart';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:auto_size_text/auto_size_text.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;
  final Color disabledColor;
  final Color disabledTextColor;
  final double minWidth;
  final double maxWidth;

  const PrimaryButton({
    required this.text,
    required this.onTap,
    required this.minWidth,
    required this.maxWidth,
    this.color = const Color(0xFF458CFF),
    this.textColor = AhaColors.white,
    this.disabledColor = AhaColors.btnDisable,
    this.disabledTextColor = AhaColors.white,
  });
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: minWidth,
        // 320 for both
        maxWidth: maxWidth,
      ),
      child: Container(
        child: MaterialButton(
          child: AutoSizeText(text, maxLines: 1),
          onPressed: onTap,
          elevation: 0,
          highlightElevation: 0,
          color: color,
          textColor: textColor,
          disabledColor: disabledColor,
          disabledTextColor: disabledTextColor,
        ),
      ),
    );
  }
}

class AppleButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;
  final Color disabledColor;
  final Color disabledTextColor;

  const AppleButton({
    required this.text,
    required this.onTap,
    this.color = AhaColors.btnPrimary,
    this.textColor = AhaColors.white,
    this.disabledColor = AhaColors.btnDisable,
    this.disabledTextColor = AhaColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 320,
        maxWidth: 320,
      ),
      child: Container(
        child: MaterialButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(SimpleIcons.apple, size: 18),
              SizedBox(
                width: 10,
              ),
              AutoSizeText(text, maxLines: 1)
            ],
          ),
          onPressed: onTap,
          elevation: 0,
          highlightElevation: 0,
          color: color,
          textColor: textColor,
          disabledColor: disabledColor,
          disabledTextColor: disabledTextColor,
        ),
      ),
    );
  }
}

class UpliftFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;
  final Color disabledColor;
  final Color disabledTextColor;
  final TextStyle textStyle;

  const UpliftFlatButton({
    required this.text,
    required this.onTap,
    required this.color,
    this.textColor = AhaColors.btnPrimary,
    required this.disabledColor,
    this.disabledTextColor = AhaColors.btnDisable,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 300,
          maxWidth: 300,
        ),
        child: FlatButton(
          child: AutoSizeText(text, maxLines: 1, style: textStyle),
          onPressed: onTap,
          color: color,
          textColor: textColor,
          disabledColor: disabledColor,
          disabledTextColor: disabledTextColor,
        ),
      ),
    );
  }
}

class PrimaryOutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const PrimaryOutlineButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 300,
          maxWidth: 300,
        ),
        child: OutlineButton(
          child: AutoSizeText(text, maxLines: 1),
          borderSide: BorderSide(color: AhaColors.btnPrimary),
          highlightedBorderColor: AhaColors.btnPrimary,
          highlightColor: AhaColors.btnPrimary.withOpacity(0.1),
          textColor: AhaColors.btnPrimary,
          onPressed: onTap,
        ),
      ),
    );
  }
}
