import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Row textWidgetWithC(double radius, String text) {
    return Row(
      children: [
        SizedBox(
          width: 10,
          child:CircleAvatar(
            backgroundColor: Colors.purple,
            radius: radius,
          ),
        ),
        const  SizedBox(
          width: 10,
        ),
        Text(text)
      ],
    );
  }

  Container customContainer({
    required Color colors,
    required Color insideColor,
    required String text1,
    required String text2,
    required String text3,}){

    return Container(
      margin:const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: insideColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
              color: colors,
              width: 3
          )
      ),
      child:  Column(
        children: [
          textWidgetWithC(4, text1,),
          textWidgetWithC(1, text2),
          textWidgetWithC(1, text3),

        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            customContainer(
                colors: Colors.purple,
                insideColor: Colors.white,
                text1: "Pick Up Laundry",
                text2: "Remember the receipt",
                text3: "Balance remaining : KSh640.00"),

            customContainer(
                colors: Colors.red,
                insideColor: Colors.grey,
                text1: "Finish up on Assignments",
                text2: "Data Structures assignment",
                text3: "Networking Assignment"),

            customContainer(
                colors: Colors.green,
                insideColor: Colors.limeAccent,
                text1: "Complete Project Designs",
                text2: "Figma design project",
                text3: "Brainstorm on some ongoing projects"),

            customContainer(
                colors: Colors.yellow,
                insideColor: Colors.lightBlue,
                text1: "Meet With Alina",
                text2: "Lunch",
                text3: "Flowers(Purple Dahlias)"),

            customContainer(
                colors: Colors.purple,
                insideColor: Colors.lightGreen,
                text1: "Pick up the laundry",
                text2: "Restock on cooking oil",
                text3: "Group discussion"),

            customContainer(
                colors: Colors.green,
                insideColor: Colors.pinkAccent,
                text1: "Complete Project Designs",
                text2: "Figma design project",
                text3: "Brainstorm on some ongoing projects"),

            customContainer(
                colors: Colors.black,
                insideColor: Colors.orangeAccent,
                text1: "Pick Up Laundry",
                text2: "Remember the receipt",
                text3: "Balance remaining : KSh640.00"),



          ],
        ),
      ),
    );
  }
}
