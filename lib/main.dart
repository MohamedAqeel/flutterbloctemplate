import 'package:expensetracker/business-logic/internet_bloc/internet_bloc.dart';
import 'package:expensetracker/config/globals.dart';
import 'package:expensetracker/config/theme.dart';
import 'package:expensetracker/routes/app_pages.dart';
import 'package:expensetracker/routes/app_routes.dart';
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
