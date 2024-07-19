import '../components/numbers_container.dart';
import '../imports.dart';
import '../models/nember_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  static const List<Item> familyMembers = [
    Item(
        enName: 'Fahter',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        song: 'father.wav'),
    Item(
        enName: 'Mother',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        song: 'mother.wav'),
    Item(
        enName: 'Grand Father',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojisan',
        song: 'grand father.wav'),
    Item(
        enName: 'Grand Mother',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        song: 'grand mother.wav'),
    Item(
        enName: 'Daughter',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        song: 'daughter.wav'),
    Item(
        enName: 'Son',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        song: 'son.wav'),
    Item(
        enName: 'Older Brother',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        song: 'older bother.wav'),
    Item(
        enName: 'Older Sister',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        song: 'older sister.wav'),
    Item(
        enName: 'Younger Brother',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otooto',
        song: 'younger brother.wav'),
    Item(
        enName: 'Younger Sister',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imooto',
        song: 'younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xFF0d1b2a),
          title: const Text(
            'Family Members',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListItem(
                item: familyMembers[index],
                color: const Color(0xFF415a77),
                itemType: 'family_members',
                textColor: Colors.white,
              );
            },
            itemCount: familyMembers.length));
  }
}
