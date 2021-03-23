import 'package:flutter/material.dart';
import 'package:flutter_provider_1/providers/sample_provider.dart';
import 'package:provider/provider.dart';

class NewSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("++++++++++++++++++++++++++++++++");
    Provider.of<SampleProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Consumer<SampleProvider>(
            builder: (context, value, child) =>
                Text(value.initialValue.toString())),
      ),
    );
  }
}
