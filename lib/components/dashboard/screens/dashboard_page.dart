import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_services/components/dashboard/bloc/dashboard_bloc.dart';

import 'dashboard_form.dart';


class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) {
          return DashBoardBloc();
        },
        child: const DashboardForm());
  }
}