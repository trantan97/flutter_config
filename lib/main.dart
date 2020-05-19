import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(FlutterConfig.get("APP_NAME")),
        ),
      ),
    );
  }
}