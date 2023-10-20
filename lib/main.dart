import 'package:flutter/material.dart';
import 'package:online_shopping/provider/provider_class.dart';
import 'package:online_shopping/view/intro.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => productscreenprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Intro(),
      ),
    );
  }
}
