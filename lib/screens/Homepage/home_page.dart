import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proudect_app/cubits/get_proudect_cubit.dart';
import 'package:proudect_app/cubits/get_proudect_states.dart';
import 'package:proudect_app/screens/Homepage/widgets/list_proudect_biulder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Proudects'),
        ),
        body: BlocBuilder<GetProudectCubit, ProudectStates>(
          builder: (context, state) {
            if (state is ProudectIntialStates) {
              return const CustomScrollView(
                slivers: [ListProudectBuilder()],
              );
            } else {
              return const Text('error');
            }
          },
        ));
  }
}
