import "package:flutter/material.dart";

class QuestWidget extends StatelessWidget {
  const QuestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      child:Ink(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.amber.withAlpha(26),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.amber.withAlpha(64))
        ),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/id/1/200/300"),
                  fit: BoxFit.cover
                )
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text("Quest Name",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: .bold,
                    fontSize: 16
                  ),),
                  Text("This is Quest Description",
                  style: TextStyle(
                    color: Colors.black.withAlpha(128),
                    fontSize: 14
                  ),)
                ],
              ),  
            )
          ],)
          
      ),
        

    );
  }
}