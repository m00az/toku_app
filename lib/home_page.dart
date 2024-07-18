import 'imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe9ecef),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0d1b2a),
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Category(
              fontolor: Colors.white,
              text: 'Numbers',
              color: const Color(0xFF1b263b),
              onTapping: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const NumbersPage();
                    },
                  ),
                );
              },
            ),
            Category(
                fontolor: Colors.white,
                color: const Color(0xFF415a77),
                text: 'Family Members',
                onTapping: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const FamilyMembersPage();
                      },
                    ),
                  );
                }),
            Category(
                fontolor: const Color(0xFF0d1b2a),
                color: const Color(0xFF778da9),
                text: 'Colors',
                onTapping: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ColorsPage();
                      },
                    ),
                  );
                }),
            Category(
              fontolor: const Color(0xFF0d1b2a),
              color: const Color(0xFFe0e1dd),
              text: 'Phrases',
              onTapping: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PhrasesPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
