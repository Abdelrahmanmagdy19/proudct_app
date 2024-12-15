import 'package:flutter/material.dart';
import 'package:proudect_app/models/peoudect_model.dart';
import 'package:proudect_app/widgets/proudect_continer.dart';

class ListProudect extends StatelessWidget {
  const ListProudect({super.key, required this.list});

  final List<ProudectModel> list;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: list.length,
      (context, index) {
        return ProudectCountiner(proudectModel: list[index]);
      },
    ));
  }
}
