
import 'package:flutter/material.dart';

class JournalPage extends StatefulWidget {
  const JournalPage({super.key});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5EC),
      appBar: AppBar(
        title: const Text('My Journal'),
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
                  'Your thoughts have a place here.',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF344B3A),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Take a moment to reflect. You can write freely, '
                  'make a list, or simply describe how your day felt.',
                  style: TextStyle(fontSize: 16, height: 1.6),
                ),
                const SizedBox(height: 28),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'A gentle prompt',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF78917B),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'What is one thing you would like to acknowledge '
                        'about today?',
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                      const SizedBox(height: 22),
                      TextField(
                        controller: _controller,
                        minLines: 8,
                        maxLines: 14,
                        onChanged: (_) => setState(() {}),
                        decoration: InputDecoration(
                          hintText: 'Start writing here...',
                          filled: true,
                          fillColor: const Color(0xFFF7F5EC),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        '${_controller.text.length} characters',
                        style: const TextStyle(color: Colors.black54),
                      ),
                      const SizedBox(height: 18),
                      Align(
                        alignment: Alignment.centerRight,
                        child: OutlinedButton.icon(
                          onPressed: () {
                            _controller.clear();
                            setState(() {});
                          },
                          icon: const Icon(Icons.delete_outline),
                          label: const Text('Clear entry'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 22),
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5EBDD),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Color(0xFF344B3A),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Demo privacy note: your writing is only held '
                          'temporarily in this open page. It is not saved '
                          'or uploaded. It will disappear when you leave '
                          'the page. Do not enter passwords, addresses, '
                          'or other sensitive personal details.',
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                    ],
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
