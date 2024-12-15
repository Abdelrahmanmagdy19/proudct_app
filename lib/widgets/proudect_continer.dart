import 'package:flutter/material.dart';
import 'package:proudect_app/models/peoudect_model.dart';
import 'package:proudect_app/widgets/ontap_contaoner.dart';

class ProudectCountiner extends StatelessWidget {
  const ProudectCountiner({super.key, required this.proudectModel});

  final ProudectModel proudectModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        height: 200,
        width: 200,
        color: Colors.red,
        child: Column(
          children: [
            SizedBox(height: 100, child: Image.network(proudectModel.image)),
            Text(
              proudectModel.category,
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              '${proudectModel.price}',
              style: const TextStyle(color: Colors.white),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return OnTapCountainer(proudectModel: proudectModel);
                    },
                  );
                },
                child: const Text('add to cared'))
          ],
        ),
      ),
    );
  }
}
