import 'package:toku/components/numbers_container.dart';

import '../components/phrasis_list.dart';
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
        body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return PhrasisItem(
                item: phrases[index],
                color: const Color(0xFFe0e1dd),
                itemType: 'phrases',
                textColor: const Color(0xFF0d1b2a),
              );
            },
            itemCount: phrases.length));
  }
}
