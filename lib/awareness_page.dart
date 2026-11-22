
import 'package:flutter/material.dart';

class AwarenessPage extends StatelessWidget {
  const AwarenessPage({super.key});

  static const Color sage = Color(0xFF78917B);
  static const Color cream = Color(0xFFF7F5EC);
  static const Color darkGreen = Color(0xFF344B3A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cream,
      appBar: AppBar(
        backgroundColor: cream,
        foregroundColor: darkGreen,
        elevation: 0,
        title: const Text(
          'Mental Health Awareness',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Padding(
              padding: const EdgeInsets.all(28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),

                  const Text(
                    'Understand your mind.',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: darkGreen,
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    'Mental health matters just as much as physical '
                    'health. Understanding your feelings is a meaningful '
                    'first step towards taking care of yourself.',
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.7,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 35),

                  const Text(
                    'Explore and learn',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: darkGreen,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const AwarenessCard(
                    icon: Icons.psychology_outlined,
                    title: 'What is mental health?',
                    description:
                        'Mental health includes our emotional, '
                        'psychological and social wellbeing. It '
                        'influences how we think, feel, learn and '
                        'connect with others.',
                  ),

                  const AwarenessCard(
                    icon: Icons.favorite_border,
                    title: 'Understanding emotions',
                    description:
                        'Happiness, sadness, frustration, fear and '
                        'excitement are all human emotions. Every '
                        'feeling deserves to be understood without '
                        'judging yourself.',
                  ),

                  const AwarenessCard(
                    icon: Icons.lightbulb_outline,
                    title: 'Recognising when you need support',
                    description:
                        'When difficult feelings continue or begin '
                        'affecting everyday activities, relationships '
                        'or sleep, talking to someone you trust can '
                        'be an important step.',
                  ),

                  const AwarenessCard(
                    icon: Icons.spa_outlined,
                    title: 'Taking care of your wellbeing',
                    description:
                        'Rest, meaningful connections, enjoyable '
                        'activities and manageable daily routines '
                        'can support your overall wellbeing.',
                  ),

                  const SizedBox(height: 25),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5EBDD),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'A gentle reminder',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: darkGreen,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'You do not have to understand everything '
                          'you feel immediately. It is okay to ask '
                          'for help, take a break and give yourself '
                          'time. You deserve support.',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.6,
                            color: darkGreen,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 35),

                  const Center(
                    child: Text(
                      'HERE — You belong. You matter. You are heard.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: sage,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AwarenessCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const AwarenessCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 32,
              color: AwarenessPage.sage,
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AwarenessPage.darkGreen,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

