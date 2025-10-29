import 'package:flutter/material.dart';

class MoodCard extends StatelessWidget {
  final String mood;
  final VoidCallback onTap;

  const MoodCard({super.key, required this.mood, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final emoji = {
      'Happy': '😊',
      'Tired': '😴',
      'Relaxed': '😌',
      'Focused': '😎',
      'Stressed': '😬',
    }[mood];

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.brown[100],
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(emoji!, style: const TextStyle(fontSize: 40)),
            const SizedBox(height: 10),
            Text(
              mood,
              style: TextStyle(
                fontSize: 18,
                color: Colors.brown[800],
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
