import 'package:flutter/material.dart';
import 'package:flutter_provider_1/providers/sample_provider.dart';
import 'package:provider/provider.dart';

class NewSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("++++++++++++++++++++++++++++++++");
    final valueScreen = Provider.of<SampleProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("New Page"),
      ),
      // body: Center(
      //   child: Consumer<SampleProvider>(
      //     builder: (context, value, child) => Text(
      //       value.initialValue.toString(),
      //       style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      //     ),
      //   ),
      // ),
      body: Center(
        child: Column(
          children: [
            Consumer<SampleProvider>(
              builder: (context, value, child) => Text(
                valueScreen.initialValue.toString(),
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
              onPressed: valueScreen.add,
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
