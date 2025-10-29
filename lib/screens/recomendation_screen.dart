import 'package:flutter/material.dart';
import 'package:mood_brew/widgets/styled_button.dart';
import 'package:mood_brew/widgets/styled_text.dart';

class RecommendationScreen extends StatelessWidget {
  final String mood;
  final Map<String, String> drink;

  const RecommendationScreen({
    super.key,
    required this.mood,
    required this.drink,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(mood)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StyledText('You’re feeling $mood ☕'),
            const SizedBox(height: 10),
            StyledText(drink['message']!, fontSize: 16),
            const SizedBox(height: 30),
            Image.asset(drink['image']!, height: 200),
            const Spacer(),
            StyledButton(
              label: 'Try Another Mood',
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
