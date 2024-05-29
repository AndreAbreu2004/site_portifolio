import 'package:flutter/material.dart';
import 'package:site_portfolio/widgets/abilities_section_web.dart';
import 'package:site_portfolio/widgets/introduction_section_mobile.dart';
import 'package:site_portfolio/widgets/introduction_section_web.dart';
import 'package:site_portfolio/widgets/projects_section_web.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            leadingWidth: 300,
            toolbarHeight: MediaQuery.of(context).size.width > 800 ? 96 : 72,
            backgroundColor: const Color.fromRGBO(22, 21, 19, 1),
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text("_andreabreu",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width > 800 ? 36 : 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              softWrap: false,
            ),
          ),
          body: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1920, minWidth: 800),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    constraints.maxWidth > 800
                      ? Padding(
                          padding: const EdgeInsets.symmetric(vertical: 128.0, horizontal: 40.0),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 1200),
                            child: const IntroductionSectionWeb(),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(vertical: 72.0, horizontal: 40.0),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 1200),
                            child: const IntroductionSectionMobile(),
                          ),
                        ),
                    Container(
                      height: 300,
                      width: double.infinity,
                      color: const Color.fromRGBO(0, 157, 222, 1),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 40.0),
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 1200),
                          child: const AbilitiesSectionWeb()
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 40.0),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 1200),
                        child: const ProjectsSectionWeb(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          backgroundColor: const Color.fromRGBO(22, 21, 19, 1),
        );
      }
    );
  }
}