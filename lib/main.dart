import 'package:flutter/material.dart';
import 'package:ramdhani_4/widgets/chip_widget.dart';
import 'package:ramdhani_4/widgets/header_widget.dart';
import 'package:ramdhani_4/widgets/quest_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adventure Guild',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Adventure Guild",
            style: TextStyle(fontWeight: .bold, color: Colors.white),
          ),
          backgroundColor: Colors.purpleAccent,
        ),
        body:Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children:[
            HeaderWidget(
              name: "Restu Sulton",
              role: "Raja Iblis",
              level: 9999999,
            ),
            Row(spacing: 8, children: [
            ChipWidget(
              color: Colors.redAccent,
              label: "Pro Player",
              icon: Icons.star,
              value: 9999999,
            ),
            ChipWidget(
              color: Colors.greenAccent,
              label: "Pro Player",
              icon: Icons.star,
              value: 9999999,
            ),
            ChipWidget(
              color: Colors.blueAccent,
              label: "Pro Player",
              icon: Icons.star,
              value: 9999999,
            )
          ]),
          Text("Quest List"),
          QuestWidget()          ]
       ),
      ),
      ),
    );
  }
}
