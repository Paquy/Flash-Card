import 'package:flashcards_app/app/models/jokes.dart';
import 'package:flutter/material.dart';
import '../widgets/card_flip_home.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  Jokes coriga = Jokes();

  PageController page = PageController();
  int indeX = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 233, 213, 103),
          title: const Text(
            'Flashcard',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.85,
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: page,
                scrollDirection: Axis.horizontal,
                itemCount: coriga.jokes.length,
                itemBuilder: (context, index) {
                  return CardFlipHome(
                    jokes: coriga.jokes[index],
                    answer: coriga.answers[index],
                  );
                },
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () {
                    indeX == 0 ? 0 : indeX--;
                    page.jumpToPage(indeX);
                    print(indeX);
                  },
                  icon: const Icon(
                    Icons.chevron_left,
                    color: Color.fromARGB(255, 233, 213, 103),
                  ),
                  label: const Text(
                    'Back',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 233, 213, 103),
                    ),
                  ),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextButton.icon(
                      onPressed: () {
                        indeX == coriga.jokes.length - 1 ? 0 : indeX++;
                        page.jumpToPage(indeX);
                        print(indeX);
                      },
                      icon: const Icon(
                        Icons.chevron_right,
                        color: Color.fromARGB(255, 233, 213, 103),
                        textDirection: TextDirection.ltr,
                      ),
                      label: const Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 233, 213, 103),
                        ),
                      )),
                ),
              ],
            )
          ],
        ));
  }
}
