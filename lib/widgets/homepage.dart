import 'package:flutter/material.dart';
import 'package:flutter_provider_1/providers/sample_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("++++++++++++++++++++++++++++++++");
    final sampleValue = Provider.of<SampleProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Provider with http",
        ),
      ),
      body: Container(
        child: FutureBuilder(
            future: sampleValue.fetchEmployes(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.all(40.0),
                      color: Colors.red,
                      height: 200,
                      padding: EdgeInsets.all(5),
                      child: Consumer<SampleProvider>(
                        builder: (context, value, child) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                  "Title : ${value.sampleModel.leaderboardTitle} "),
                              Text("Email : ${value.sampleModel.contactEmail}"),
                              Text(
                                  "Mobile Number : ${value.sampleModel.contactMobile}"),
                              Text("Initial Data : ${value.initialValue}"),
                              FloatingActionButton(
                                  onPressed: value.add, child: Icon(Icons.add)),
                            ],
                          );
                        },
                      ),
                    ),
                    Consumer<SampleProvider>(
                      builder: (context, value, child) => Center(
                        child: Text(
                          value.initialValue.toString(),
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(40.0),
                      color: Colors.red,
                      height: 200,
                      padding: EdgeInsets.all(5),
                      child: Consumer<SampleProvider>(
                        builder: (context, value, child) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                  "Title : ${value.sampleModel.leaderboardTitle} "),
                              Text("Email : ${value.sampleModel.contactEmail}"),
                              Text(
                                  "Mobile Number : ${value.sampleModel.contactMobile}"),
                              Text("Initial Data : ${value.initialValue}"),
                              FloatingActionButton(
                                  onPressed: value.diff,
                                  child: Icon(Icons.remove)),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
