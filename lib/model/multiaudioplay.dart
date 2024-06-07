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
  Widget pWidget(Color colors,String audio) {
    return GestureDetector(
      onTap: ()  {
        player.play(UrlSource(audio));

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
            pWidget(Colors.pink,"assets/lmn.wav"),
            pWidget(Colors.yellow,"assets/kk.wav"),
            pWidget(Colors.red,"assets/xyz.wav"),
            pWidget(Colors.indigo,"assets/sound.wav"),
            pWidget(Colors.orange,"assets/audio.wav"),
          ],
        ));
  }
}






