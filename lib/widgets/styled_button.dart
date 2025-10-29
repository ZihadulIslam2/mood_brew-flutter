import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const StyledButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.brown[700],
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      onPressed: onPressed,
      child: Text(label, style: const TextStyle(fontSize: 16)),
    );
  }
}
