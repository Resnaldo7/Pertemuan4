import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String name;
  final String role;
  final int level;

  const HeaderWidget({super.key, required this.name, required this.role, required this.level});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color.fromARGB(255, 26, 11, 193), const Color.fromARGB(255, 215, 54, 75)],
          begin: .topStart,
          end: .bottomEnd
        ),
        borderRadius: BorderRadius.circular(16)
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage("https://picsum.photos/id/1/200/300"),
              ),
              Positioned(
                //right: 2,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: const Color.fromARGB(255, 252, 1, 1),
                  ),
                  child: Text("Level $level",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 15,
                    fontWeight: .bold
                  ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(name,
                style: TextStyle(
                  color: const Color.fromARGB(255, 235, 252, 2),
                  fontWeight: .bold,
                  fontSize: 16
                ),),
                Text(role,
                style: TextStyle(
                  color: const Color.fromARGB(255, 252, 73, 2),
                  fontWeight: .bold,
                  fontSize: 14
                ),)
              ],
            ),
          )

        ],
      ),
    );
  }
}