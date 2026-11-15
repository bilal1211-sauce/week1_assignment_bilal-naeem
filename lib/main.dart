import 'package:flutter/material.dart';

const String studentName = 'Muhammad Bilal Naeem';

String greetingFor(int hour) {
  if (hour < 12) {
    return 'Good morning';
  } else if (hour < 17) {
    return 'Good afternoon';
  } else {
    return 'Good evening';
  }
}

void main() {
  runApp(const HelloApp());
}

class HelloApp extends StatelessWidget {
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(colorSchemeSeed: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: const Text('Week 1: Automatic Time')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(size: 96),
              const SizedBox(height: 24),
              Text(
                '${greetingFor(DateTime.now().hour)}, $studentName!',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text('Mobile Application Development, week 1'),
            ],
          ),
        ),
      ),
    );
  }
}
