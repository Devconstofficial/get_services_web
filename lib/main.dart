import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_services/components/categories/bloc/categories_bloc.dart';
import 'package:get_services/components/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:get_services/components/login/Auth_screen.dart';
import 'package:get_services/components/login/bloc/login_bloc.dart';

import 'package:get_services/components/providers/bloc/provider_bloc.dart';
import 'package:get_services/components/side_bar/bloc/side_bar_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_services/firebase_options.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale("en", "US"),
        Locale("ar", "SA"),
        Locale("he", "IL"),
      ],
      saveLocale: true,
      path: 'assets/translation',
      fallbackLocale: const Locale("ar", "SA"),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SideBarBloc()),
        BlocProvider(create: (_) => ProvidersBloc()),
        BlocProvider(create: (_) => LoginBloc()),
        BlocProvider(create: (_) => ForgotPasswordBloc()),
        BlocProvider(create: (_) => CategoriesBloc()),
      ],
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return GetMaterialApp(
            title: 'Get Services',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            home: const AuthScreen(),
            locale: context.locale,
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
          );
        },
      ),
    );
  }
}
