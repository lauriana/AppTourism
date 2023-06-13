import 'package:flutter/material.dart';
import 'package:tcc_prefeitura/utils/styles.dart';

import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/welcomepagebg.png"),
        fit: BoxFit.cover,
      )),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 65, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Explore a cidade de Pinhais",
                  style: alternativeHeading,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Pinhais te espera! Explore e descubra as maravilhas locais!",
                  style: alternativeHeading2,
                ),
                const Padding(padding: EdgeInsets.all(10)),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: Ink(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: accent, borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Comece Agora!",
                      style: textwelcome,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
