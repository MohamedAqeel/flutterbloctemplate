import 'dart:developer';
import 'package:flutterbloctemplate/business-logic/internet_bloc/internet_bloc.dart';
import 'package:flutterbloctemplate/views/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: BlocListener<InternetBloc, InternetBlocState>(
        listener: (context, state) {
          if (state is InternetConnected) {
            log("Internet Connected");
          }
          if (state is InternetDisconnected) {
            log("Internet DisConnected");
          }
          log("Bloc Listnere");
        },
        child: Center(child: const AppLogo()),
      ),
    );
  }
}
