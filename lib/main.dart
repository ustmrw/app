import 'package:flutter/material.dart';

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({Key? key}) : super(key: key);

  final TextStyle headlineStyle = const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('US+'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.diversity_1),
              ),
              Tab(
                icon: Icon(Icons.currency_exchange),
              ),
              Tab(
                icon: Icon(Icons.health_and_safety),
              ),
              Tab(
                icon: Icon(Icons.where_to_vote),
              ),
              Tab(
                icon: Icon(Icons.local_police),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Text("SAFETY", style: headlineStyle),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text("MONEY", style: headlineStyle),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text("HEALTH", style: headlineStyle),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text("CIVICS", style: headlineStyle),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text("SERVE", style: headlineStyle),
            ),
          ],
        ),
      ),
    );
  }
}
