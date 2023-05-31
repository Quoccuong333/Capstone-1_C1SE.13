import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Login/login.dart';
import 'widgets/widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_helper/firebase_options.dart';

void main() {
  runApp(MyApp());
}

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sports Field Booking Application',
      theme: ThemeData(
        textTheme:
        GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/Home': (context) => Navigation(),
        '/Details': (context) => SportsFieldDetails(),
      },
    );
  }
}