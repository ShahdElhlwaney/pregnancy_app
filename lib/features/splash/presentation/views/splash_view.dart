

import 'package:flutter/material.dart';
import 'package:pregnancy_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:pregnancy_app/features/auth/presentation/views/sign_up_view.dart';

class SplaashView extends StatefulWidget {
  const SplaashView({Key? key}) : super(key: key);

  @override
  State<SplaashView> createState() => _SplaashViewState();
}

class _SplaashViewState extends State<SplaashView> {
  @override
  void initState() {
    Future.delayed(const Duration(
      seconds: 5
    ),
        ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpView()))
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.6),
      body: Center(child: Image.asset('assets/splash_pics/splash_pic.jpg')),
    );
  }
}
