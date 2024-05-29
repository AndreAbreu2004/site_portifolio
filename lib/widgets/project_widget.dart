import 'package:flutter/material.dart';

class ProjectWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const ProjectWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(imagePath),
          width: 256,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w100,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w100,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
