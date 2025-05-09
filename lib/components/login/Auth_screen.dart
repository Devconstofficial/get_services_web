import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_services/components/home_page/screens/home_page.dart';
import 'package:get_services/components/login/login_screen.dart';
import 'package:get_services/shared_preferences.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final PreferencesService prefs = PreferencesService();
  bool? isLogin;

  @override
  void initState() {
    super.initState();
    getUserLogin();
  }

  Future<void> getUserLogin() async {
    final loginStatus = await prefs.getUserLogin();
    setState(() {
      isLogin = loginStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLogin == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (isLogin == true) {
        Get.offAll(() => const MyHomePage());
      } else {
        Get.offAll(() => const LoginScreen());
      }
    });

    return const SizedBox.shrink();
  }
}
