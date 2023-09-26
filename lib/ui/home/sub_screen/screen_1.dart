import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/counter_provider.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<CounterProvider>(context,listen: true);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen 1"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(provider.getCount.toString()),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false).countAdd();
                  },
                  child: const Text("+")),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false).countSub();
                  },
                  child: const Text("-")),
            ],
          ),
        )
    );
  }
}
