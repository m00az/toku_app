import 'package:toku/components/numbers_container.dart';
import '../imports.dart';
import '../models/nember_model.dart';

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
              return ListItem(
                item: numbers[index],
                color: const Color(0xFF1b263b),
                itemType: 'numbers',
                textColor: Colors.white,
              );
            },
            itemCount: numbers.length));
  }
}

const List<Item> numbers = [
  Item(
      enName: 'One',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      song: 'number_one_sound.mp3'),
  Item(
      enName: 'Two',
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      song: 'number_two_sound.mp3'),
  Item(
      enName: 'Three',
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      song: 'number_three_sound.mp3'),
  Item(
      enName: 'Four',
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      song: 'number_four_sound.mp3'),
  Item(
      enName: 'Five',
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      song: 'number_five_sound.mp3'),
  Item(
      enName: 'Six',
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      song: 'number_six_sound.mp3'),
  Item(
      enName: 'Seven',
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      song: 'number_seven_sound.mp3'),
  Item(
      enName: 'Eight',
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      song: 'number_eight_sound.mp3'),
  Item(
      enName: 'Nine',
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyu',
      song: 'number_nine_sound.mp3'),
  Item(
      enName: 'Ten',
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Ju',
      song: 'number_ten_sound.mp3'),
];
