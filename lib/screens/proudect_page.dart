import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proudect_app/cubits/get_proudect_cubit.dart';
import 'package:proudect_app/cubits/get_proudect_states.dart';
import 'package:proudect_app/models/peoudect_model.dart';

class ProudectPage extends StatelessWidget {
  const ProudectPage(
      {super.key, required this.proudectModel, required this.amount});
  final ProudectModel proudectModel;
  final int amount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetProudectCubit, ProudectStates>(
        builder: (context, state) {
          if (state is ProudectIntialStates) {
            return Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Column(
                  children: [
                    SizedBox(
                        height: 100, child: Image.network(proudectModel.image)),
                    Text(
                      proudectModel.category,
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      '${proudectModel.price}',
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text('amount $amount',
                        style: const TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            );
          } else {
            return const Text('adad');
          }
        },
      ),
    );
  }
}
