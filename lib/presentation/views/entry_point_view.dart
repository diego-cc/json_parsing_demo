import 'package:flutter/material.dart';
import 'package:json_parsing_demo/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class EntryPointView extends StatelessWidget {
  const EntryPointView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSON Parsing Demo',
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
