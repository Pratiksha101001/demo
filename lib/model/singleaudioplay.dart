import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final player = AudioPlayer();
  Widget pWidget(Color colors) {
    return GestureDetector(
      onTap: () {
        player.play(UrlSource("assets/lmn.wav"));
      },
      child: Container(
        height: 145,
        width: double.infinity,
        alignment: Alignment.center,
        color: colors,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            pWidget(Colors.pink),
            pWidget(Colors.yellow),
            pWidget(Colors.red),
            pWidget(Colors.indigo),
            pWidget(Colors.orange),
            //pWidget(Colors.orange),
          ],
        ));
  }
}

