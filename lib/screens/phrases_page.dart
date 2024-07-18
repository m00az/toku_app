import '../imports.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF0d1b2a),
        title: const Text(
          'Phrases',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
