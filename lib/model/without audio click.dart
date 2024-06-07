
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
        player.play(UrlSource("assets/audio.wav"));
      },
      child: Container(
        height: 100,
        width: double.infinity,
        alignment: Alignment.center,
        color: colors,
      ),
    );
  }
  playSong()async{
    await player.play(UrlSource("assets/audio.wav"));

  }
  @override
  void initState(){
    playSong();
    super.initState();
  }

   final TextEditingController _controller = TextEditingController();

    void _playMusic(String text)async{
      switch(text){
        case "1":
          await play("assets/lmn.wav");
          break;
        case "2":
          await play("assets/lmn.wav");
          break;
        case "3":
          await play("assets/lmn.wav");
          break;
        case "4":
          await play("assets/lmn.wav");
          break;
        default:
          await play("assets/audio.wav");

      }
    }
    play(String songName)async{
      return await player.play(UrlSource(songName));
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
          ],
        )
    );
  }
}



