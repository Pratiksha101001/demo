import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

 class MyApp extends StatelessWidget {
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
   State<HomeView> createState() =>  _HomeViewState();
 }
 class _HomeViewState extends State<HomeView> {
   final player= AudioPlayer();
   Widget pWidget(Color colors,String audio) {
     return GestureDetector(
     onTap: () async{
       await player.play(UrlSource(audio));
      },
     child: Container(
       height: 200,
       width: double.infinity,
       alignment: Alignment.center,
       color: colors,
      ),
    );
   }
    @override
     Widget build(BuildContext context) {
       return Scaffold(
         body:SafeArea(
       child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
         child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           pWidget(Colors.green,"assets/audio.wav"),
           pWidget(Colors.red,"assets/audio.wav"),
           pWidget(Colors.indigo,"assets/audio.wav"),
           pWidget(Colors.pink,"assets/audio.wav"),
           pWidget(Colors.orange,"assets/audio.wav"),
           pWidget(Colors.grey,"assets/audio.wav"),
          ],
         ),
       ),
         ),

      );
    }
 }

