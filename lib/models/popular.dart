import 'user_model.dart';

// YOU - current user
/*final User currentUser =
    User(id: 0, name: 'Current User', imageUrl: 'assets/images/kenobi.jpg');
*/
// USERS
final User kenobi = 
    User(id: 1, name: 'Ewan', imageUrl: 'assets/images/kenobi.jpg', note: '9.8', 
    bio: 'Ewan Gordon McGregor é um ator escocês. Foi considerado uma das melhores estrelas de cinema em 1997 segundo a Empire.',
    date: '31 de março de 1971 (idade 48 anos)', nationality: 'Britânico',
    image1: 'assets/images/kenobi-1.jpg', image2: 'assets/images/kenobi-2.jpg', image3: 'assets/images/kenobi-3.jpg'
    );


final User momoa =
    User(id: 2, name: 'Momoa', imageUrl: 'assets/images/momoa.jpg', note: '9.0', 
    bio:'Joseph Jason Namakaeha Momoa é um ator, modelo, roteirista, diretor e produtor americano. Filho único de pai havaiano e mãe de ascendência alemã e irlandesa',
    date: '1 de agosto de 1979 (idade 40 anos)', nationality: 'Americano',
    image1: 'assets/images/momoa-1.jpg', image2: 'assets/images/momoa-2.jpg', image3: 'assets/images/momoa-3.jpg'
    );


final User emma =
    User(id: 3, name: 'Emma', imageUrl: 'assets/images/emma.jpg', note:'9.5', 
    bio:'Emma Charlotte Duerre Watson é uma atriz, modelo e ativista britânica, nascida na França, conhecida mundialmente pelo seu papel como Hermione Granger na série de filmes Harry Potter',
    date: '15 de abril de 1990 (idade 29 anos)', nationality: 'Britânica',
    image1: 'assets/images/emma-1.jpg', image2: 'assets/images/emma.jpg-2', image3: 'assets/images/emma.jpg-3'
    );


final User chris =
    User(id: 4, name: 'Chris', imageUrl: 'assets/images/chris.jpg', note: '8.9', 
    bio:'Christopher Hemsworth é um ator australiano, conhecido por interpretar Thor no Universo Cinematográfico Marvel.',
    date: '11 de agosto de 1983 (idade 36 anos)', nationality: 'Australiano',
    image1: 'assets/images/chris-1.jpg', image2: 'assets/images/chris-2.jpg', image3: 'assets/images/chris-3.jpg'
    );


final User amber = 
    User(id: 5, name: 'Amber', imageUrl: 'assets/images/amber.jpg', note: '10.0', 
    bio:'Amber Laura Heard é uma atriz e modelo norte-americana. Desempenhou o papel principal e personagem-título em All the Boys Love Mandy Lane que estreou no Festival Internacional de Cinema de Toronto em 2006',
    date: '22 de abril de 1986 (idade 33 anos)', nationality: 'Americana',
    image1: 'assets/images/amber-1.jpg', image2: 'assets/images/amber-2.jpg', image3: 'assets/images/amber-3.jpg'
    );


final User margot =
    User(id: 6, name: 'Margot', imageUrl: 'assets/images/margot.jpg', note: '10.0', 
    bio:'Margot Elise Robbie é uma atriz australiana, indicada ao Oscar de melhor atriz por seu papel em Eu, Tonya.',
    date: '2 de julho de 1990 (idade 29 anos)', nationality: 'Australiana',
    image1: 'assets/images/margot-1.jpg', image2: 'assets/images/margot-2.jpg', image3: 'assets/images/margot-3.jpg'
    );


final User hugh =
    User(id: 7, name: 'Hugh', imageUrl: 'assets/images/hugh.jpg', note: '9.7', 
    bio:'Hugh Michael Jackman AC é um ator, cantor, dublador e produtor de cinema australiano. Ele ganhou reconhecimento internacional por seus filmes em grande escala, particularmente em personagens de ação/herói ou em personagens românticos.',
    date: '12 de outubro de 1968 (idade 51 anos)', nationality: 'Australiano',
    image1: 'assets/images/hugh-1.jpg', image2: 'assets/images/hugh-2.jpg', image3: 'assets/images/hugh-3.jpg');


final User bruce =
    User(id: 8, name: 'Bruce', imageUrl: 'assets/images/bruce.jpg', note:'9.1', 
    bio:'Benjamin Géza Affleck Boldt, mais conhecido como Ben Affleck é um ator, diretor, roteirista e produtor norte-americano. Começou sua carreira como ator mirim, protagonista na série educativa The Voyage of the Mimi e The Second Voyage of the Mimi da PBS.',
    date: '15 de agosto de 1972 (idade 47 anos)', nationality: 'Americano',
    image1: 'assets/images/bruce-1.jpg', image2: 'assets/images/bruce-2.jpg', image3: 'assets/images/bruce-3.jpg');


final User gal =
    User(id: 9, name: 'Gadot', imageUrl: 'assets/images/gal.jpg', note: '9.3', 
    bio:'Gal Gadot Varsano é uma atriz e modelo israelense, conhecida principalmente pelos papéis de Gisele na franquia The Fast and the Furious e Diana Prince em Mulher-Maravilha no Universo Estendido DC',
    date: '30 de abril de 1985 (idade 34 anos)', nationality: 'Israelense',
    image1: 'assets/images/gal-1.jpg', image2: 'assets/images/gal-2.jpg', image3: 'assets/images/gal-3.jpg');


final User cap =
    User(id: 10, name: 'Rogers', imageUrl: 'assets/images/cap.jpg', note: '9.0', 
    bio:'Christopher Robert Evans é um ator estadunidense. Ele começou sua carreira na série de televisão Opposite Sex, e desde então apareceu em vários filmes, sendo mais conhecido por interpretar o Capitão América no Universo Cinematográfico da Marvel',
    date: '13 de junho de 1981 (idade 38 anos)', nationality: 'Americano',
    image1: 'assets/images/cap-1.jpg', image2: 'assets/images/cap-2.jpg', image3: 'assets/images/cap-3.jpg');


List<User> favorites = [cap, amber, hugh, momoa, emma, kenobi, chris, margot, bruce, gal];

//_________________________________________________________________________

final User vader =
    User(id: 11, name: 'Vader', imageUrl: 'assets/images/Vader.jpg', note: '10', bio:'aaa', date: 'sss', nationality: 'ddd',
     );

    final User yoda =
    User(id: 10, name: 'Yoda', imageUrl: 'assets/images/yoda.jpg', note: '9.8', bio:'aaa', date: 'sss', nationality: 'ddd'
     );

//_________________________________________________________________________



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