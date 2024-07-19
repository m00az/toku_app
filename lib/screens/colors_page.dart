import 'package:toku/components/colors_list.dart';

import '../components/numbers_container.dart';
import '../imports.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xFF0d1b2a),
          title: const Text(
            'Colors',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListItem(
                item: colors[index],
                color: const Color(0xFF778da9),
                itemType: 'colors',
                textColor: const Color(0xFF0d1b2a),
              );
            },
            itemCount: colors.length));
  }
}
