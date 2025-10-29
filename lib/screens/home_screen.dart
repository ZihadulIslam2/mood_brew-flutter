import 'package:flutter/material.dart';
import 'package:mood_brew/screens/recomendation_screen.dart';
import 'package:mood_brew/widgets/mood_card.dart';
import 'package:mood_brew/widgets/styled_text.dart';
import 'package:mood_brew/data/drinks_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _selectMood(BuildContext context, String mood) {
    final drink = drinksData[mood];
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => RecommendationScreen(mood: mood, drink: drink!),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final moods = drinksData.keys.toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Mood Brew ☕'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const StyledText('Choose your mood to find your perfect drink:'),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: moods
                    .map(
                      (mood) => MoodCard(
                        mood: mood,
                        onTap: () => _selectMood(context, mood),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
