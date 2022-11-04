import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './src/screens/Home.dart';
import './src/providers/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<ProductProvider>(
              create: (context) => ProductProvider())
        ],
        child: Scaffold(
          body: SafeArea(child: HomePage()),
        ),
      ),
    );
  }
}
