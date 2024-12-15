import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proudect_app/cubits/get_proudect_cubit.dart';
import 'package:proudect_app/screens/Homepage/home_page.dart';

void main() {
  runApp(const PorudectApp());
}

class PorudectApp extends StatelessWidget {
  const PorudectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetProudectCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
