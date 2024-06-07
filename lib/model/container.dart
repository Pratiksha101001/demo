import 'package:flutter/material.dart';
void main() => runApp( MyApp());

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
  State<HomeView> createState() => _HomeViewState();
}
class _HomeViewState extends State<HomeView> {
  Widget pWidget(Color colors) {
    return Container(
      height: 140,
      width: double.infinity,
      alignment: Alignment.center,
      color: colors,
      child: const Text("Click Me", style: TextStyle(
        color: Colors.black,
        fontSize: 30.0,
      ),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          pWidget(Colors.pink),
          pWidget(Colors.red),
          pWidget(Colors.indigo),
          pWidget(Colors.green) ,
          pWidget(Colors.yellow) ,
          //pWidget(Colors.yellow) ,
        ],
      ),
    );
  }
}











