import "package:flutter/material.dart";
import "package:ramdhani_4/models/quest.dart";

class QuestWidget extends StatelessWidget {
  final List<Quest> quests;

  const QuestWidget({super.key, required this.quests});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: quests.map((quest) {
        return InkWell(
          borderRadius: BorderRadius.circular(14),
          child: Ink(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.amber.withAlpha(26),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.amber.withAlpha(64)),
            ),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
                      image: NetworkImage(quest.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        quest.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        quest.description,
                        style: TextStyle(
                          color: Colors.black.withAlpha(128),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Reward: ${quest.reward}",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
