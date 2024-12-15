import 'package:flutter/material.dart';
import 'package:proudect_app/models/peoudect_model.dart';
import 'package:proudect_app/screens/proudect_page.dart';

class OnTapCountainer extends StatefulWidget {
  const OnTapCountainer({
    super.key,
    required this.proudectModel,
  });

  final ProudectModel proudectModel;

  @override
  State<OnTapCountainer> createState() => _OnTapCountainerState();
}

class _OnTapCountainerState extends State<OnTapCountainer> {
  int amount = 0;
  ProudectModel? proudectModel;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Column(
          children: [
            Text(widget.proudectModel.category),
            Text(widget.proudectModel.price.toString()),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      amount++;
                    });
                  },
                  icon: const Icon(Icons.add_circle),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      amount--;
                    });
                  },
                  icon: const Icon(Icons.remove_circle),
                ),
                Text('Amount $amount'),
                const SizedBox(width: 30),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProudectPage(
                              proudectModel: widget.proudectModel,
                              amount: amount,
                            ),
                          ));
                    },
                    child: const Text('add')),
              ],
            ),
          ],
        )
      ],
    );
  }
}
