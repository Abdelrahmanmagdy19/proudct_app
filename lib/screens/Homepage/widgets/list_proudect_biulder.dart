import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proudect_app/cubits/get_proudect_cubit.dart';
import 'package:proudect_app/models/peoudect_model.dart';
import 'package:proudect_app/screens/Homepage/widgets/list_proudect.dart';

class ListProudectBuilder extends StatefulWidget {
  const ListProudectBuilder({
    super.key,
  });

  @override
  State<ListProudectBuilder> createState() => _ListProudectBuilderState();
}

class _ListProudectBuilderState extends State<ListProudectBuilder> {
  var future;
  @override
  void initState() {
    future = BlocProvider.of<GetProudectCubit>(context).getProudect();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProudectModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListProudect(list: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('error'),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
