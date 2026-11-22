
import 'package:flutter/material.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  static const Color cream = Color(0xFFF7F5EC);
  static const Color darkGreen = Color(0xFF344B3A);
  static const Color sage = Color(0xFF78917B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cream,
      appBar: AppBar(
        title: const Text('Get Support'),
        backgroundColor: cream,
        foregroundColor: darkGreen,
        elevation: 0,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 850),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Asking for support is okay.',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: darkGreen,
                  ),
                ),
                const SizedBox(height: 14),
                const Text(
                  'You do not need to figure everything out alone. '
                  'A trusted adult, school counsellor, doctor or '
                  'qualified mental health professional can help '
                  'you explore the support that may be right for you.',
                  style: TextStyle(fontSize: 16, height: 1.7),
                ),
                const SizedBox(height: 28),
                _SupportCard(
                  icon: Icons.support_agent,
                  title: 'Tele-MANAS',
                  subtitle:
                      'Government of India mental health support service',
                  number: '14416',
                  extra:
                      'You can also call 1800-89-14416. The service '
                      'provides free, round-the-clock support and '
                      'multilingual assistance.',
                ),
                const SizedBox(height: 16),
                _SupportCard(
                  icon: Icons.emergency_outlined,
                  title: 'Emergency assistance',
                  subtitle: 'India’s national emergency number',
                  number: '112',
                  extra:
                      'For an immediate emergency or urgent danger, '
                      'call 112 or ask a trusted adult to help you '
                      'reach the nearest emergency department.',
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5EBDD),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You can also start with someone you trust',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: darkGreen,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'A parent or guardian, relative, teacher, '
                        'school counsellor or healthcare professional '
                        'may help you find the next step. You can '
                        'simply say, “I have been finding things '
                        'difficult and I would like some support.”',
                        style: TextStyle(fontSize: 15, height: 1.6),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Important: HERE is an educational website, not a '
                  'medical service or emergency response service. '
                  'It does not diagnose conditions or replace '
                  'professional care.',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Support information: Ministry of Health and Family '
                  'Welfare (Tele-MANAS) and Ministry of Home Affairs '
                  '(ERSS 112), Government of India.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                    height: 1.5,
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

class _SupportCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String number;
  final String extra;

  const _SupportCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.number,
    required this.extra,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 34, color: SupportPage.sage),
            const SizedBox(height: 14),
            Text(
              title,
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: SupportPage.darkGreen,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 14),
            Text(
              number,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: SupportPage.sage,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              extra,
              style: const TextStyle(
                fontSize: 15,
                height: 1.6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
