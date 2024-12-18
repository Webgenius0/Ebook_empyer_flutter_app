import 'package:abdilahi/features/auth/signup/presentation/gender_screen.dart';
import 'package:abdilahi/features/home/presentation/explore_by_genre_screen.dart';
import 'package:abdilahi/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:abdilahi/features/home/presentation/home_screen.dart';
import 'package:abdilahi/helpers/helper_methods.dart';
import 'package:abdilahi/splash_screen.dart';

final class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  bool _isLoading = true;

  @override
  void initState() {
    loadInitialData();
    super.initState();
  }

  loadInitialData() async {
    await setInitValue();

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const SplashScreen();
    } else {
      return const HomeScreen();
    }
  }
}
