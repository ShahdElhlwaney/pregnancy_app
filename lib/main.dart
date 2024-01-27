import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pregnancy_app/features/auth/data/models/profile_manager.dart';
import 'package:pregnancy_app/features/splash/presentation/views/splash_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=>ProfileManager(),
      child: const MaterialApp(
        home: SplaashView(),
      ),
    );
  }
}



