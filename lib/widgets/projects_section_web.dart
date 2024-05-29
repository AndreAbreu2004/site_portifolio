import 'package:flutter/material.dart';

import 'project_widget.dart';

class ProjectsSectionWeb extends StatelessWidget {
  const ProjectsSectionWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 1200,
          child: Row(
            children: [
              const Text(
                "_projetos",
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
                ProjectWidget(
                  imagePath: "assets/devils-revenge.png",
                  title: "Devil's Revenge",
                  description: "Jogo 2D desenvolvido na Unity",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
