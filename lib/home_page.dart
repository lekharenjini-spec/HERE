 
 import 'package:flutter/material.dart';

 import 'awareness_page.dart';
 import 'journal_page.dart';
 import 'wellness_page.dart';
 import 'support_page.dart';
 import 'community_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color sageGreen = Color(0xFF78917B);
  static const Color cream = Color(0xFFF7F5EC);
  static const Color darkGreen = Color(0xFF344B3A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cream,
      appBar: AppBar(
        backgroundColor: cream,
        elevation: 0,
        title: const Text(
          'HERE',
          style: TextStyle(
            color: darkGreen,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AwarenessPage(),
                ),
              );
            },
            child: const Text(
              'Explore',
              style: TextStyle(color: darkGreen),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1100),
            child: Padding(
              padding: const EdgeInsets.all(28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 55),

                  const Text(
                    'A safe space to pause,\nfeel, and begin again.',
                    style: TextStyle(
                      fontSize: 48,
                      height: 1.2,
                      fontWeight: FontWeight.bold,
                      color: darkGreen,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'You belong. You matter. You are heard.',
                    style: TextStyle(
                      fontSize: 19,
                      color: sageGreen,
                    ),
                  ),

                  const SizedBox(height: 30),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: sageGreen,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 18,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const AwarenessPage(),
                        ),
                      );
                    },
                    child: const Text('Explore HERE'),
                  ),

                  const SizedBox(height: 75),

                  const Text(
                    'A little space for you',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: darkGreen,
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'Explore, express yourself and discover support.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 28),

                  Wrap(
                    spacing: 18,
                    runSpacing: 18,
                    children: [
                      FeatureCard(
                        icon: Icons.psychology_outlined,
                        title: 'Understand',
                        description:
                            'Learn about mental health and emotions.',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const AwarenessPage(),
                            ),
                          );
                        },
                      ),
                      FeatureCard(
                        icon: Icons.menu_book_outlined,
                        title: 'My Journal',
                        description:
                            'Reflect on your thoughts and feelings.',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const JournalPage(),
                            ),
                          );
                        },
                      ),
                      FeatureCard(
                        icon: Icons.spa_outlined,
                        title: 'Daily Wellness',
                        description:
                            'Explore small activities for everyday wellbeing.',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const WellnessPage(),
                            ),
                          );
                        },
                      ),
                      FeatureCard(
                        icon: Icons.volunteer_activism_outlined,
                        title: 'Get Support',
                        description:
                            'Find guidance and mental health support resources.',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const SupportPage(),
                            ),
                          );
                        },
                      ),
                      FeatureCard(
                        icon: Icons.people_outline,
                        title: 'Community',
                        description:
                            'Discover thoughtful prompts and shared learning.',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const CommunityPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 75),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(26),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5EBDD),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Column(
                      children: [
                        Text(
                          'You are not alone.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: darkGreen,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Take your time. Your story matters.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: darkGreen,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 45),

                  const Center(
                    child: Text(
                      'HERE — You belong. You matter. You are heard.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: sageGreen,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final VoidCallback onTap;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Card(
        color: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(14),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: 34,
                  color: HomePage.sageGreen,
                ),
                const SizedBox(height: 18),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: HomePage.darkGreen,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 15,
                    height: 1.5,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Text(
                      'Explore',
                      style: TextStyle(
                        color: HomePage.sageGreen,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 6),
                    Icon(
                      Icons.arrow_forward,
                      color: HomePage.sageGreen,
                      size: 17,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
