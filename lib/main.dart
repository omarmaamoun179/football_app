import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/screens/home_screen.dart';
import 'package:football_app/service/reset_api.dart';

import 'cubit/football_cubit.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => FootballCubit(ApiService()),
    child: const FootballApp(),
  ));
}

class FootballApp extends StatelessWidget {
  const FootballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
