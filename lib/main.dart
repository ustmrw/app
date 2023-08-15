import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'US Portal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'US Portal'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Container(
          alignment: Alignment.center,
          child: Text(widget.title),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.mode_night), // Add your desired icon here
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
                height: 20), // Add some space between the text and buttons
            IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'SAFETY',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('ID'),
                  ),
                  const Text(
                    'MONEY',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Wallet'),
                  ),
                  const Text(
                    'HEALTH',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Services'),
                  ),
                  const Text(
                    'CIVICS',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Vote'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 70.0, // Set the desired width
        height: 70.0, // Set the desired height
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          shape: const CircleBorder(), // Make the button circular
          materialTapTargetSize: MaterialTapTargetSize.padded,
          child: const Center(
            // Center the icon within the button
            child: Icon(
              Icons.search,
              size: 40.0,
            ), // Icon for the button
          ),
        ),
      ),
    );
  }
}
