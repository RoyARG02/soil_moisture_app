/*
* build_theme

* Defines the theme to be used in throughout the app
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// * ui import
import 'package:soil_moisture_app/ui/colors.dart';

// * Helper functions for returning appropriate themes
ThemeMode determineThemeMode(bool isDarkTheme) {
  return isDarkTheme ? ThemeMode.dark : ThemeMode.light;
}

SystemUiOverlayStyle appSystemUiTheme(bool isDarkTheme) {
  return isDarkTheme ? buildDarkSystemUi() : buildLightSystemUi();
}

// * Text theme to be used throughout the app
TextTheme appTextTheme = TextTheme(
  headline1: TextStyle(fontFamily: 'Ocrb'),
  headline2: TextStyle(fontFamily: 'Ocrb'),
  headline3: TextStyle(fontFamily: 'Ocrb'),
  headline4: TextStyle(fontFamily: 'Ocrb'),
  bodyText2: TextStyle(fontFamily: 'Ocrb'),
  bodyText1: TextStyle(fontFamily: 'Ocrb'),
  headline5: TextStyle(fontFamily: 'Ocrb'),
  subtitle2: TextStyle(fontFamily: 'Ocrb'),
  button: TextStyle(fontFamily: 'Ocrb'),
  caption: TextStyle(fontFamily: 'Ocrb'),
  subtitle1: TextStyle(fontFamily: 'Ocrb'),
  overline: TextStyle(fontFamily: 'Ocrb'),
  headline6: TextStyle(fontFamily: 'Ocrb'),
);

// * Light Theme
ThemeData buildLightTheme() {
  ThemeData base = ThemeData.from(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      background: Colors.white,
      primary: appPrimaryColor,
      secondary: appSecondaryLightColor,
      surface: appPrimaryLightColor,
      error: appErrorDarkColor,
      onBackground: Colors.black,
      onError: Colors.black,
      onPrimary: appSecondaryDarkColor,
      onSecondary: appPrimaryLightColor,
      onSurface: Colors.black,
      primaryVariant: appPrimaryDarkColor,
      secondaryVariant: appSecondaryColor,
    ),
    textTheme: appTextTheme,
  );
  return base.copyWith(
    appBarTheme: base.appBarTheme.copyWith(
      brightness: Brightness.light,
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: appSecondaryDarkColor,
    ),
    bottomSheetTheme: base.bottomSheetTheme.copyWith(
      backgroundColor: appSecondaryLightColor,
    ),
    tabBarTheme: base.tabBarTheme.copyWith(
      labelColor: base.cardColor,
      unselectedLabelColor: appSecondaryDarkColor,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 3.0,
          color: base.cardColor,
        ),
        insets: EdgeInsets.only(bottom: 1.0),
      ),
    ),
    cardTheme: base.cardTheme.copyWith(
      elevation: 3.0,
    ),
    snackBarTheme: base.snackBarTheme.copyWith(
      backgroundColor: appSecondaryColor,
    ),
    accentTextTheme: base.accentTextTheme.apply(
      fontFamily: 'Ocrb',
    ),
    primaryTextTheme: base.accentTextTheme.apply(
      fontFamily: 'Ocrb',
      bodyColor: appSecondaryDarkColor,
      displayColor: appSecondaryDarkColor,
    ),
  );
}

ThemeData buildDarkTheme() {
  ThemeData base = ThemeData.from(
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      background: materialDarkGreyColor,
      primary:
          darkAppPrimaryLightColor, // completely useless, use surface instead
      secondary: darkAppPrimaryColor,
      surface: materialDarkGreyColor,
      error: darkAppErrorLightColor,
      onPrimary: Colors.black, // completely useless, use onSurface instead
      onBackground: Colors.white,
      onError: Colors.black,
      onSecondary: Colors.black,
      onSurface: Colors.white,
      primaryVariant: darkAppPrimaryColor,
      secondaryVariant: darkAppPrimaryColor,
    ),
    textTheme: appTextTheme,
  );
  return base.copyWith(
    appBarTheme: base.appBarTheme.copyWith(
      brightness: Brightness.dark,
    ),
    tabBarTheme: base.tabBarTheme.copyWith(
      labelColor: base.cardColor,
      unselectedLabelColor: darkAppSecondaryDarkColor,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 3.0,
          color: base.cardColor,
        ),
        insets: EdgeInsets.only(bottom: 1.0),
      ),
    ),
    cardTheme: base.cardTheme.copyWith(
      elevation: 3.0,
    ),
    snackBarTheme: base.snackBarTheme.copyWith(
      backgroundColor: darkAppPrimaryLightColor,
    ),
    accentTextTheme: base.accentTextTheme.apply(
      fontFamily: 'Ocrb',
    ),
    primaryTextTheme: base.accentTextTheme.apply(
      fontFamily: 'Ocrb',
      bodyColor: base.accentColor,
      displayColor: base.accentColor,
    ),
    toggleableActiveColor: darkAppPrimaryColor,
    iconTheme: base.iconTheme.copyWith(
      color: base.accentColor,
    ),
  );
}

SystemUiOverlayStyle buildLightSystemUi() => SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: appSecondaryLightColor,
    );

SystemUiOverlayStyle buildDarkSystemUi() => SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: darkAppPrimaryColor,
    );
