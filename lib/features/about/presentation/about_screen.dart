import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 16.0,
              children: [
                ClipOval(
                  child: Image.asset('assets/images/mario.png', width: 200),
                ),
                Text('Mario Drengner', style: textTheme.headlineSmall),
                Text('Software Entwickler', style: textTheme.bodyLarge),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Ich bin Mario (43), Berliner Web-Dev-Nerd, der JavaScript, TypeScript und PHP wie Superkräfte schwingt, während ich Flutter-Apps teste, Docker-Container zähme und Xcode-Simulatoren anbrülle. Zuhause herrscht mein Mini-Tech-Dschungel aus Gartenbau, Aquaponik und Hausautomatisierung, wo Pflanzen klüger sind als manche Apps. Ich mixe Pragmatismus, Chaos und Nerd-Humor zu einer explosiven Mischung, die alles zum Laufen bringt – oder zumindest spektakulär scheitern lässt. Wer mich sucht, findet mich entweder am Coden, am Basteln oder dabei, mein Leben zu debuggen, während ich Pflanzen Wi-Fi beibringe.',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
