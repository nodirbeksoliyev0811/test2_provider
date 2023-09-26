import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:test2_provider/providers/counter_provider.dart';
import 'package:test2_provider/ui/tabs/tab_box.dart';

Future<void> main()async {
  runApp( MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=>CounterProvider(),lazy: true,)
  ],child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: false,
          ),
          home: const TabsBox(),
        );
      },
    );
  }
}
