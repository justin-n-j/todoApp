import 'package:flutter/material.dart';
import 'package:task_justin/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(statusBarColor: Colors.white),
  // );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
    );
  }
}
