
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  static const Color cream = Color(0xFFF7F5EC);
  static const Color darkGreen = Color(0xFF344B3A);
  static const Color sage = Color(0xFF78917B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cream,
      appBar: AppBar(
        title: const Text('Community'),
        backgroundColor: cream,
        foregroundColor: darkGreen,
        elevation: 0,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'We grow through connection.',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: darkGreen,
                  ),
                ),
                const SizedBox(height: 14),
                const Text(
                  'A thoughtful space to learn from different '
                  'experiences, find encouragement and remember '
                  'that everyone deserves kindness.',
                  style: TextStyle(fontSize: 16, height: 1.7),
                ),
                const SizedBox(height: 28),
                const Text(
                  'Conversation starters',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: darkGreen,
                  ),
                ),
                const SizedBox(height: 16),
                const _CommunityCard(
                  icon: Icons.eco_outlined,
                  title: 'Small steps count',
                  description:
                      'What is one small thing that helped make '
                      'your day a little easier?',
                  tag: 'Reflection prompt',
                ),
                const _CommunityCard(
                  icon: Icons.favorite_border,
                  title: 'Kindness matters',
                  description:
                      'What does being supportive and listening '
                      'without judgement mean to you?',
                  tag: 'Discussion prompt',
                ),
                const _CommunityCard(
                  icon: Icons.auto_stories_outlined,
                  title: 'Learning together',
                  description:
                      'What is one helpful thing you have learned '
                      'about emotional wellbeing?',
                  tag: 'Learning prompt',
                ),
                const SizedBox(height: 24),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5EBDD),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Our community guidelines',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: darkGreen,
                        ),
                      ),
                      SizedBox(height: 14),
                      _Guideline(
                        text: 'Treat every person with respect and kindness.',
                      ),
                      _Guideline(
                        text: 'Do not share addresses, phone numbers, '
                            'passwords or identifying details.',
                      ),
                      _Guideline(
                        text: 'Do not bully, shame or judge anyone.',
                      ),
                      _Guideline(
                        text: 'Do not present personal opinions as '
                            'medical diagnoses or professional advice.',
                      ),
                      _Guideline(
                        text: 'Ask a trusted adult or professional for '
                            'help when you need support.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'This is a design preview with sample prompts. '
                  'It does not publish messages or connect visitors '
                  'to one another. A real community needs active '
                  'moderation, reporting tools and privacy safeguards '
                  'before public posting is enabled.',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 25),
                const Center(
                  child: Text(
                    'A kinder space begins with all of us.',
                    style: TextStyle(
                      color: sage,
                      fontWeight: FontWeight.w600,
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

class _CommunityCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final String tag;

  const _CommunityCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      margin: const EdgeInsets.only(bottom: 14),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 32, color: CommunityPage.sage),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tag.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 11,
                      letterSpacing: 1.2,
                      color: CommunityPage.sage,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: CommunityPage.darkGreen,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.5,
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

class _Guideline extends StatelessWidget {
  final String text;

  const _Guideline({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.check_circle_outline,
            color: CommunityPage.sage,
            size: 20,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 15,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
