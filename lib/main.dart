import 'package:finli/page.dart';
import 'package:finli/user_list.dart';
import 'package:flutter/material.dart';
import 'auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(),
      ),
      routes: {
        '/': (context) => const Auth(),
        '/UsersListScreen': (context) => const UsersListScreen(),
        '/SwitchesDemoScreen': (context) => const SwitchesDemoScreen (),
      },
    );
  }
}
