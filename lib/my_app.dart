import 'package:flutter/material.dart';
import 'package:iclick_timesheet/core/config/app_config.dart';
import 'package:iclick_timesheet/core/di/injection.config.dart';
import 'package:iclick_timesheet/core/theme/app_theme.dart';
import 'package:iclick_timesheet/core/theme/fonts.dart';
import 'package:iclick_timesheet/core/theme/skin.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final config = sl<AppConfig>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iClick Timesheet',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: _HomePage(
  
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(sl<AppConfig>().appName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home Page',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
