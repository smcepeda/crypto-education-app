import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

MaterialColor paywallButton = MaterialColor(0xFF00CC91, color);
Map<int, Color> color = {
  50: Color.fromRGBO(0, 204, 145, 1),
  100: Color.fromRGBO(0, 204, 145, 1),
  200: Color.fromRGBO(0, 204, 145, 1),
  300: Color.fromRGBO(0, 204, 145, 1),
  400: Color.fromRGBO(0, 204, 145, 1),
  500: Color.fromRGBO(0, 204, 145, 1),
  600: Color.fromRGBO(0, 204, 145, 1),
  700: Color.fromRGBO(0, 204, 145, 1),
  800: Color.fromRGBO(0, 204, 145, 1),
  900: Color.fromRGBO(0, 204, 145, 1),
};

class AhaColors {
  static const btnPrimary = Colors.black;
  static const accentLighter = const Color(0xfffdecf6);
  static const accentLight = const Color(0xfffabedc);
  static const accentMedium = const Color(0xfff179b5);
  static const accentDark = const Color(0xffe84a99);
  static const accentDarker = const Color(0xffda1678);
  static const bg = const Color(0xfffcfcfc);
  static const iconNoActive = const Color(0xffb1b1b1);
  static const border = const Color(0xffe9e9e9);
  static const textPrimary = const Color(0xff313131);
  static const textSecondary = const Color(0xff666666);
  static const textPlaceholder = const Color(0xff999999);
  static const iconsClose = const Color(0xffd5d5d5);
  static const error = const Color(0xffe67575);
  static const btnDisable = Colors.black87;
  static const textWarning = const Color(0xffd2a35c);
  static const bgWarning = const Color(0xfffef3cd);
  static const facebook = const Color(0xff4267b2);
  static const borderWarning = const Color(0xfffeeeba);
  static const google = const Color(0xffd44639);
  static const white = const Color(0xffffffff);
  static const blueGrey = const Color(0xff8e8e93);
  static const black12 = const Color(0x1f000000);
  static const coolBlue = const Color(0xff358ed7);
  static const deepSkyBlue = const Color(0xff007aff);
  static const chatTextInput = const Color(0xffE9E9E9);
  static const chatInputBorder = const Color(0xffB1B1B1);
  static const remove = const Color(0xffE67575);
  static const premium = const Color(0xffF2C94C);
  static const premiumLight = const Color(0xffFFE491);
  static const targetWeight = const Color(0xff00b16a);
  static const weight = const Color(0xFFFF6464);
  static const unavailable = const Color(0xFFFF6464);
  static const tableBackgroudGrey = const Color(0xFFF8F8F8);
  static const tableBackgroudWhite = Colors.white;
  static const savingsColor = const Color(0xFFDF8806);
  static const fadedGreen = const Color(0xFFDAFCEE);
  static const lightfadedGreen = const Color(0xFFF2FBF8);
  static const openChatArrowGray = const Color(0xFFBBBBBB);
}

class UpliftThemes {
  static ThemeData light() {
    return ThemeData(
      fontFamily: 'CircularStd',
      primaryColor: AhaColors.btnPrimary,
      // backgroundColor: const Color(0xFFF1F5FF),
      canvasColor: AhaColors.white,
      primarySwatch: paywallButton,
      // scaffoldBackgroundColor: const Color(0xFFF1F5FF),
      appBarTheme: AppBarTheme(
        brightness: Brightness.light,
        color: AhaColors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        textTheme: TextTheme(
            // title: _textTheme.body2.copyWith(color: UpliftColors.textPrimary),
            ),
      ),
      textTheme: _textTheme,
      buttonTheme: ButtonThemeData(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        buttonColor: AhaColors.btnPrimary,
        disabledColor: AhaColors.btnDisable,
        highlightColor: AhaColors.btnPrimary.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        textTheme: ButtonTextTheme.primary,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: AhaColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      cupertinoOverrideTheme: CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
            // dateTimePickerTextStyle: _textTheme.body1,
            ),
      ),
    );
  }
}

const TextTheme _textTheme = TextTheme(

    // headline: TextStyle(
    //     fontSize: 26,
    //     letterSpacing: 0,
    //     color: UpliftColors.textPrimary,
    //     fontWeight: FontWeight.w900),
    // title: TextStyle(
    //     fontSize: 20,
    //     letterSpacing: 0,
    //     color: UpliftColors.textPrimary,
    //     fontWeight: FontWeight.bold),
    // display1: TextStyle(
    //     fontSize: 26,
    //     letterSpacing: 0,
    //     color: UpliftColors.textPrimary,
    //     fontWeight: FontWeight.bold),
    // display3:
    //     TextStyle(fontSize: 38, letterSpacing: 0, color: UpliftColors.btnPrimary),
    // display2:
    //     TextStyle(fontSize: 22, letterSpacing: 0, color: UpliftColors.btnPrimary),
    // body2: TextStyle(
    //     fontSize: 18, letterSpacing: 0, height: 1.4, fontWeight: FontWeight.bold),
    // body1: TextStyle(fontSize: 18, letterSpacing: 0, height: 1.4),
    // caption: TextStyle(fontSize: 14),
    // button:
    //     TextStyle(fontSize: 16, letterSpacing: 0.5, fontWeight: FontWeight.w900),
    // subtitle: TextStyle(
    //     fontSize: 16,
    //     height: 1.4,
    //     color: UpliftColors.textSecondary,
    //     fontWeight: FontWeight.normal),
    // overline: TextStyle(
    //     fontSize: 10,
    //     color: UpliftColors.textPlaceholder,
    //     fontWeight: FontWeight.normal,
    //     letterSpacing: 0),
    // subhead: TextStyle(
    //     fontSize: 14,
    //     color: UpliftColors.textPlaceholder,
    //     fontWeight: FontWeight.normal),
    );
