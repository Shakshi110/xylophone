import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Xylophone App",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
          useMaterial3: true,
        ),
        home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  void playSound(int soundNumber){
    final player= AudioPlayer();
    player.play(AssetSource("note$soundNumber.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade300,
       //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
            child: Text("XYLOPHONE", style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold),)),
      ),

body: Column(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    TextButton(
      child: Container(color: Colors.red, height: 80,),
      onPressed: (){
        playSound(1);
      },
    ),
    TextButton(
      child: Container(color: Colors.orange,height: 80,),
      onPressed: (){
        playSound(2);
      },
    ),
    TextButton(
      child: Container(color: Colors.yellow,height: 80,),
      onPressed: (){
        playSound(3);
      },
    ),
    TextButton(
      child: Container(color: Colors.green,height: 80,),
      onPressed: (){
        playSound(4);
      },
    ),
    TextButton(
      child: Container(color: Colors.teal,height:78,),
      onPressed: (){
        playSound(5);
      },
    ),
    TextButton(
      child: Container(color: Colors.blue.shade800,height: 78,),
      onPressed: (){
        playSound(6);
      },
    ),
    TextButton(
      child: Container(color: Colors.purple.shade700,height: 78,),
      onPressed: (){
        playSound(7);
      },
    ),
  ],
),
    );
  }
}
