
import 'package:flutter/material.dart';

class WellnessPage extends StatefulWidget {
  const WellnessPage({super.key});

  @override
  State<WellnessPage> createState() => _WellnessPageState();
}

class _WellnessPageState extends State<WellnessPage> {
  final List<String> activities = [
    'Take a few moments to breathe slowly.',
    'Drink some water.',
    'Spend a little time away from screens.',
    'Connect with someone you trust.',
    'Make time for an activity you enjoy.',
  ];

  final List<bool> completed = List<bool>.filled(5, false);

  @override
  Widget build(BuildContext context) {
    final int totalCompleted =
        completed.where((item) => item).length;

    return Scaffold(
      backgroundColor: const Color(0xFFF7F5EC),
      appBar: AppBar(
        title: const Text('Daily Wellness'),
        backgroundColor: const Color(0xFFF7F5EC),
        foregroundColor: const Color(0xFF344B3A),
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
                  'Small steps matter.',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF344B3A),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Wellbeing does not need to be a big achievement. '
                  'Choose a small activity that feels manageable today.',
                  style: TextStyle(fontSize: 16, height: 1.6),
                ),
                const SizedBox(height: 28),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5EBDD),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Your daily check-in',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF344B3A),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        '$totalCompleted of ${activities.length} activities completed',
                        style: const TextStyle(fontSize: 15),
                      ),
                      const SizedBox(height: 12),
                      LinearProgressIndicator(
                        value: totalCompleted / activities.length,
                        minHeight: 9,
                        backgroundColor: Colors.white,
                        color: const Color(0xFF78917B),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  'A few ideas for today',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF344B3A),
                  ),
                ),
                const SizedBox(height: 12),
                ...List.generate(activities.length, (index) {
                  return Card(
                    color: Colors.white,
                    elevation: 1,
                    margin: const EdgeInsets.only(bottom: 12),
                    child: CheckboxListTile(
                      activeColor: const Color(0xFF78917B),
                      title: Text(
                        activities[index],
                        style: const TextStyle(height: 1.4),
                      ),
                      value: completed[index],
                      onChanged: (value) {
                        setState(() {
                          completed[index] = value ?? false;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  );
                }),
                const SizedBox(height: 16),
                const Text(
                  'You do not have to complete every activity. '
                  'Choose what works for you, and be kind to yourself.',
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: Color(0xFF344B3A),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
