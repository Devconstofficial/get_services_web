import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_services/components/side_bar/bloc/side_bar_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_services/gen/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'common_model/categories_model.dart';
import 'components/home_page/screens/home_page.dart';
import 'components/side_bar/screens/side_bar.dart';
import 'gen/assets.gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SideBarBloc()),
      ],
      child: ResponsiveSizer(
          builder: (context, orientation, screenType) {
            return MaterialApp(
            title: 'Get Services',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            home: const MyHomePage(),
          );
        }
      ),
    );
  }
}


