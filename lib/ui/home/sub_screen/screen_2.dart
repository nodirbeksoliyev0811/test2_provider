import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/counter_provider.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<CounterProvider>(context,listen: true);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Screen 2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(provider.getCount.toString()),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false).countAdd();
                  },
                  child: const Text("+")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
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
