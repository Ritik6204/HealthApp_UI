import 'package:flutter/material.dart';

class EmojiFaces extends StatelessWidget {
  final String emoji;
  final String emojiText;
  const EmojiFaces({super.key, required this.emoji , required this.emojiText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.blue[500], borderRadius: BorderRadius.circular(10)),
          child: Text(
            emoji,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(height: 8),
         Text(
          emojiText,
          style: const TextStyle(color: Colors.white, fontSize: 13),
        ),
      ],
    );
  }
}
