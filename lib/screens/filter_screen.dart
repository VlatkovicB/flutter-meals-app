import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters!'),
      ),
      body: Center(
        child: Text('Filters'),
      ),
    );
  }
}
