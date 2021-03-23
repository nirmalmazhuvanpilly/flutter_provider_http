import 'package:flutter/material.dart';
import 'package:flutter_provider_1/providers/sample_provider.dart';
import 'package:flutter_provider_1/widgets/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SampleProvider(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
