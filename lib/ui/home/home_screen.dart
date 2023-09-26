import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2_provider/ui/home/sub_screen/screen_1.dart';
import 'package:test2_provider/ui/home/sub_screen/screen_2.dart';
import 'package:test2_provider/ui/home/sub_screen/screen_3.dart';
import '../../providers/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CounterProvider>(context, listen: true);
    return Scaffold(
        appBar: AppBar(
          title: const Text(""),
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
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenOne(),
                      ),
                    );
                  },
                  child: const Text("Screen 1")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenTwo(),
                      ),
                    );
                  },
                  child: const Text("Screen 2")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenThree(),
                      ),
                    );
                  },
                  child: const Text("Screen 3")),
            ],
          ),
        ));
  }
}
