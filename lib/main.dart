import 'package:flutter/material.dart';
import 'package:flutter_provider_1/providers/sample_provider.dart';
import 'package:flutter_provider_1/providers/sample_provider_1.dart';
import 'package:flutter_provider_1/widgets/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // create: (_) => SampleProvider(),
      providers: [
        ChangeNotifierProvider(
          create: (_) => SampleProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SampleProvider1(),
        ),
      ],

      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
