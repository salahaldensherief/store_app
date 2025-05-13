import 'package:flutter/material.dart';
import 'package:store_app/presentation/views/home_view.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      routes: {
        HomeView.id: (context) => HomeView()
      },
      initialRoute: HomeView.id,
    );
  }
}

