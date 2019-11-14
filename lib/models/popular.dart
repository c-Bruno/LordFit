import 'user_model.dart';

class Message {
  final User sender;
  final String
      time; 
  final String text;
 /* final bool isLiked;
  final bool unread;*/

  Message({
    this.sender,
    this.time,
    this.text,
   /* this.isLiked,
    this.unread,*/
  });
}

// YOU - current user
/*final User currentUser =
    User(id: 0, name: 'Current User', imageUrl: 'assets/images/kenobi.jpg');
*/
// USERS
final User kenobi = 
    User(id: 1, name: 'Ewan', imageUrl: 'assets/images/kenobi.jpg');

final User momoa =
    User(id: 2, name: 'Momoa', imageUrl: 'assets/images/momoa.jpg');

final User emma =
    User(id: 3, name: 'Emma', imageUrl: 'assets/images/emma.jpg');

final User chris =
    User(id: 4, name: 'Chris', imageUrl: 'assets/images/chris.jpg');

final User amber = 
    User(id: 5, name: 'Amber', imageUrl: 'assets/images/amber.jpg');

final User margot =
    User(id: 6, name: 'Margot', imageUrl: 'assets/images/margot.jpg');

final User hugh =
    User(id: 7, name: 'Hugh', imageUrl: 'assets/images/hugh.jpg');

final User bruce =
    User(id: 8, name: 'Bruce', imageUrl: 'assets/images/bruce.jpg');

final User jane =
    User(id: 9, name: 'Jane', imageUrl: 'assets/images/jane.jpg');

final User cap =
    User(id: 10, name: 'Rogers', imageUrl: 'assets/images/cap.jpg');

//_________________________________________________________________________

final User vader =
    User(id: 11, name: 'Vader', imageUrl: 'assets/images/Vader.jpg');

    final User yoda =
    User(id: 10, name: 'Yoda', imageUrl: 'assets/images/yoda.jpg');

//_________________________________________________________________________

List<User> favorites = [cap, amber, hugh, momoa, emma, kenobi, chris, margot, bruce, jane ];

List<Message> chats = [
  Message(
    sender: kenobi,
    text: 'Eai, bora treinar ?',
  ),
  Message(
    sender: margot,
    text: 'No pain no gain !!',
  ),
  Message(
    sender: bruce,
    text: 'Se você sempre faz as mesmas coisas, você sempre terá os mesmos resultados.',
  ),
  Message(
    sender: yoda,
    text: 'O maior prazer da vida é fazer algo que as pessoas acreditam que você não consegue',
  ),
  Message(
    sender: vader,
    text: 'Se não existe esforço, não existe progresso',
  ),
  Message(
    sender: emma,
    text: 'Eu não me alimento pelo gosto, mas sim pela função da comida',
  ),
  Message(
    sender: chris,
    text: 'Estimule, não aniquile.',
  ),
];