import 'user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
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

// FAVORITE CONTACTS
List<User> favorites = [cap, amber, hugh, momoa, emma, kenobi, chris, margot, bruce, jane ];

// EXAMPLE CHATS ON HOME SCREEN
/*List<Message> chats = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];*/