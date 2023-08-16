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
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('US + Earth'),
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
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("SAFETY"),
            ),
            Center(
              child: Text("MONEY"),
            ),
            Center(
              child: Text("HEALTH"),
            ),
            Center(
              child: Text("CIVICS"),
            ),
            Center(
              child: Text("SERVE"),
            ),
          ],
        ),
      ),
    );
  }
}
