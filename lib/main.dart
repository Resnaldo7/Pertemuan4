import 'package:flutter/material.dart';
import 'package:ramdhani_4/widgets/chip_widget.dart';
import 'package:ramdhani_4/widgets/header_widget.dart';
import 'package:ramdhani_4/widgets/quest_widget.dart';
import 'package:ramdhani_4/models/quest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Data quest dinamis
    final List<Quest> quests = [
      Quest(
        title: "Defeat the Dragon",
        description: "Slay the mighty dragon in the mountains.",
        reward: "1000 Gold Coins",
        imageUrl: "https://picsum.photos/id/1/200/300",
      ),
      Quest(
        title: "Collect Herbs",
        description: "Gather rare herbs from the forest.",
        reward: "500 Gold Coins",
        imageUrl: "https://picsum.photos/id/2/200/300",
      ),
      Quest(
        title: "Rescue the Villagers",
        description: "Save the villagers from bandits.",
        reward: "200 Gold Coins",
        imageUrl: "https://picsum.photos/id/3/200/300",
      ),
    ];

    return MaterialApp(
      title: 'Adventure Guild',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Adventure Guild",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              HeaderWidget(
                name: "Restu Sulton",
                role: "Raja Iblis",
                level: 9999999,
              ),
              Row(
                spacing: 8,
                children: [
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
                  ),
                ],
              ),
              Text("Quest List"),
              QuestWidget(quests: quests),
            ],
          ),
        ),
      ),
    );
  }
}
