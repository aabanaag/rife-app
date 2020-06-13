import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rife/router.dart';
import 'package:rife/screens/splash/index.dart';

void main() => runApp(RifeApp());

class RifeApp extends StatefulWidget {
  @override
  _RifeAppState createState() => _RifeAppState();
}

class _RifeAppState extends State<RifeApp> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: 'Rife',
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoTextTheme(
          textTheme.apply(
            bodyColor: Colors.black,
            displayColor: Colors.black,
          )
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFF5DD2E4)
        ),
        primaryColor: const Color(0xFF5DD2E4),
      ),
      onGenerateRoute: Router.generateRoute,
      home: SplashScreen(),
      initialRoute: '/',
    );
  }
}

