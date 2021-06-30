import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data.dart';
class Rec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<Data>(context);
    return Scaffold(
      body: Center(
        child: Text(providerdata.value.toString()),
        ),

    );

  }
}
