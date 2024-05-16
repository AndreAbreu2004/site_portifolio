import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 300,
        toolbarHeight: 80,
        backgroundColor: const Color.fromRGBO(22, 21, 19, 1),
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
          child: Text("_andreabreu",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            softWrap: false,
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: SizedBox(
              width: 1400,
              child: Column(
                children: [
                  const SizedBox(height: 128),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              child: RichText(
                                text: const TextSpan(
                                  children: <TextSpan> [
                                    TextSpan(
                                      text: "Prazer, eu me chamo ",
                                      style: TextStyle(
                                      fontSize: 48,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white
                                      ),
                                    ),
                                    TextSpan(
                                      text: "André",
                                      style: TextStyle(
                                      fontSize: 48,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white
                                      )
                                    ),
                                  ]
                                )
                              ),
                            ),
                            const Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare risus at massa ornare, eu consectetur ligula efficitur. Praesent elementum mauris ipsum, vitae scelerisque nisl posuere id. Proin turpis neque, ullamcorper eget odio in, tincidunt congue lorem.",
                              style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w100,
                              color: Colors.white
                              ),
                            ),
                          ]
                        ),
                      ),
                      const SizedBox(width: 32),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(height: 480, width: 480, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 128),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(22, 21, 19, 1),
    );
  }
}