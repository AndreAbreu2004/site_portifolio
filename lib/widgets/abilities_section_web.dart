import 'package:flutter/material.dart';

import 'ability-widget.dart';

class AbilitiesSectionWeb extends StatelessWidget {
  const AbilitiesSectionWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 1200,
          child: Row(
            children: [
              const Text(
                "_habilidades",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 32),
              Expanded(
                child: Container(
                  height: 2,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
        const SizedBox(
          width: 1200,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 48,
              alignment: WrapAlignment.center,
              children: [
                AbilityWidget(
                  imagePath: "assets/flutter-icon.png",
                  title: "Flutter",
                ),
                AbilityWidget(
                  imagePath: "assets/unity-icon.png",
                  title: "Unity",
                ),
                AbilityWidget(
                  imagePath: "assets/excel-icon.png",
                  title: "Excel VBA",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
