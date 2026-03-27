
import 'package:database_creation_app/screens/data_screen.dart';
import 'package:flutter/material.dart';

class MyDatabaseApp extends StatelessWidget{
  const MyDatabaseApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "database",
    home: DataScreen(),
   );
  }
}