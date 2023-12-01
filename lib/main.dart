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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();



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

  void playSound(int soundNumber) async{
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  child: const Text(""),
                  onPressed: ()  {
                   playSound(1);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.orange,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  child: const Text(""),
                  onPressed: ()  {
                    playSound(2);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  child: const Text(""),
                  onPressed: ()  {
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  child: const Text(""),
                  onPressed: ()  {
                  playSound(4);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.teal,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  child: const Text(""),
                  onPressed: ()  {
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  child: const Text(""),
                  onPressed: ()  {
                    playSound(6);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.purple,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  child: const Text(""),
                  onPressed: ()  {
                    playSound(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


