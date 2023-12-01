import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Rockstar Music'),
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

  void _incrementCounter() async {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [

              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
                child: const Text(""),
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note1.wav'));
                },

              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
                child: const Text(""),
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note2.wav'));
                },

              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
                child: const Text(""),
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note3.wav'));
                },

              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
                child: const Text(""),
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note4.wav'));
                },

              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
                child: const Text(""),
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note5.wav'));
                },

              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
                child: const Text(""),
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note6.wav'));
                },

              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
                child: const Text(""),
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note7.wav'));
                },

              ),

            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.widget,
  });

  final MyHomePage widget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title),
    );
  }
}
