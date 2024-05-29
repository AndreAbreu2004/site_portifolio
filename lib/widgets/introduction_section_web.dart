import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionSectionWeb extends StatelessWidget {
  const IntroductionSectionWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 48,
                      color: Colors.white,
                    ),
                      children: const <TextSpan> [
                        TextSpan(
                          text: "// Prazer, eu me chamo ",
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                        TextSpan(
                          text: "André",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ]
                  )
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Tenho 20 anos e sou estudante de engenharia de computação. Tenho interesse pelas áreas de desenvolvimento de jogos, aplicativos e cloud computing. Além disso, sou apaixonado por música e tenho formação técnica no contrabaixo. Gosto de aprender coisas novas e resolver problemas. Falo inglês fluentemente e tenho espanhol, japonês e LIBRAS básico.",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w100,
                      color: Colors.white
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const Row(
                children: [
                  Image(
                    image: AssetImage("assets/github-icon.png"),
                    width: 36,
                    height: 36,
                  ),
                  SizedBox(width: 16),
                  Text(
                    "github.com/andreabreu",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                        color: Colors.white
                    ),
                  ),
                ]
              ),
              const SizedBox(height: 16),
              const Row(
                  children: [
                    Image(
                      image: AssetImage("assets/linkedin-icon.png"),
                      width: 36,
                      height: 36,
                    ),
                    SizedBox(width: 16),
                    Text(
                      "linkedin.com/in/andre-rabreu",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                          color: Colors.white
                      ),
                    ),
                  ]
              )
            ]
          ),
        ),
        const SizedBox(width: 32),
        const Image(
          image: AssetImage("assets/profile.jpg",),
          width: 300,
          height: 400,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
