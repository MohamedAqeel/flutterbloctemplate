import 'package:flutterbloctemplate/business-logic/internet_bloc/internet_bloc.dart';
import 'package:flutterbloctemplate/config/globals.dart';
import 'package:flutterbloctemplate/config/theme.dart';
import 'package:flutterbloctemplate/routes/app_pages.dart';
import 'package:flutterbloctemplate/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetBloc>(
          create: (context) => InternetBloc()..add(ListenInternet()),
        )
      ],
      child: MaterialApp(
        title: Globals.APPNAME,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: AppRoutes.splash,
      ),
    );
  }
}
