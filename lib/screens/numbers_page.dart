import 'package:toku/components/numbers_container.dart';
import '../components/numbers_list.dart';
import '../imports.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xFF0d1b2a),
          title: const Text(
            'Numbers (Suuji)',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Item(number: numbers[index]);
            },
            itemCount: numbers.length));
            
  }
}
