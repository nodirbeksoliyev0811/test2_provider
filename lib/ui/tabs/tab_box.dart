import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/counter_provider.dart';

class TabsBox extends StatelessWidget {
  const TabsBox({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CounterProvider>(context, listen: true);
    return Scaffold(
      body: provider.screens[provider.activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Screen 1"),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Screen 2"),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Screen 3"),
        ],
        selectedIconTheme: const IconThemeData(color: Colors.white),
        selectedItemColor: Colors.white,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: provider.activeIndex == 1
            ? Colors.red
            : provider.activeIndex == 2
                ? Colors.green
                : Colors.deepPurple,
        currentIndex: provider.activeIndex,
        onTap: (index) {
          provider.getIndex(index);
        },
      ),
    );
  }
}
