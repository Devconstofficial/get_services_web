import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_services/components/providers/bloc/provider_bloc.dart';

import 'provider_form.dart';


class ProviderPage extends StatelessWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) {
          return ProvidersBloc();
        },
        child: const ProviderForm());
  }
}