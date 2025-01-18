import 'package:flutter/material.dart';

import 'package:isread/pages/book_page.dart';
import 'package:isread/pages/home_page.dart';
import 'package:isread/pages/login_page.dart';
import 'package:isread/pages/welcome_page.dart';
import 'package:isread/pages/register_page.dart';
import 'package:isread/pages/splash_screen.dart';

import 'package:isread/admin_dashboard/book_dashboard.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:isread/pages/scan_page.dart';

import 'package:isread/admin_dashboard/form_add_book.dart';
import 'package:isread/admin_dashboard/form_edit_book.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ISREAD',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          primary: Colors.white,
          surface: Color(0xff112D4E),
        ),
      ),
      initialRoute: 'splash_screen',
      routes: {
        'home_page': (context) => HomeView(onCategorySelected: (category) {}),
        'book_page': (context) => BookView(selectedCategory: 'All'),
        'welcome_screen': (context) => WelcomeScreen(),
        'book_dashboard': (context) => BookDashboard(),
        'login_page': (context) => LoginPage(),
        'scan_page': (context) => ScanView(),
        'add_book_page': (context) => AddBookPage(),
        'edit_book_page': (context) => EditBookPage(),
        'register_page': (context) => RegisterPage(),
        'splash_screen': (context) => SplashScreen(),
      },
    );
  }
}
