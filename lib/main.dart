import 'package:flutter/material.dart';
import 'package:shoppingapp/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();

  }
  

}
class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp( 
      title: 'Brady Norum\'s Yard Sale',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.dark,
        ),
        navigationRailTheme: const NavigationRailThemeData(
          backgroundColor: Color(0xFFcc8dd1),
          selectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          selectedLabelTextStyle: TextStyle(
            color: Colors.white,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          unselectedLabelTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.openSans(
            fontSize: 24,
          ),
          bodyMedium: GoogleFonts.openSans(),
          displaySmall: GoogleFonts.openSans(),
          bodySmall: GoogleFonts.openSans(),
          labelLarge: GoogleFonts.openSans(),
          labelMedium: GoogleFonts.openSans(),
          labelSmall: GoogleFonts.openSans(),

        ),
  ),
    );
  } //build
} //myapp class
