import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Marquee Text',style: TextStyle(fontSize: 15),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Marquee(
            accelerationDuration: const Duration(seconds: 1),
            crossAxisAlignment: CrossAxisAlignment.center,
            decelerationDuration: const Duration(seconds: 1),
            fadingEdgeEndFraction: 1.0,
            fadingEdgeStartFraction: 1.0,
            numberOfRounds: 1,
            onDone: () {},
            scrollAxis: Axis.horizontal,
            showFadingOnlyWhenScrolling: true,
            startAfter: const Duration(microseconds: 10000),
            startPadding: 10,
            textDirection: TextDirection.ltr,
            textScaleFactor: 1,
            text: 'Successoft Infotech',
            style:const TextStyle(fontSize: 30,),
            accelerationCurve: Curves.bounceIn,
            decelerationCurve: Curves.linear,
            blankSpace: 390,
            velocity: 50.0,
            pauseAfterRound: const Duration(milliseconds: 2000),
          ),
        )
      ),
    );
  }
}
