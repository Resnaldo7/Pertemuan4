import 'package:flutter/material.dart'; 

class ChipWidget extends StatelessWidget {
  final Color color;
  final String label;
  final IconData icon;
  final int value;
  const ChipWidget({super.key, required this.color, required this.label, required this.icon, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.amber.withAlpha(26),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.amber.withAlpha(64))
      ),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.redAccent,),
          SizedBox(width: 8,),
          Text("Pro Player",
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 252, 13),
            fontWeight: .bold
          ),)
          
        ],)
        
    );
  }
}