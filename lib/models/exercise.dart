import 'exercise_model.dart';

final Exercise supino = 
    Exercise(
        id: 1, image: 'assets/images/w5.jpg',  name: 'Saltos de panturrilha',
        info: 'Definitivamente é um dos principais para quem deseja fortalecer ou ganhar massa muscular na região do peitoral.' +
        'Para treinar grupos musculares entre eles, peitorais maiores; deltoide; coracobraquial e também tricípete braquial, o mecanismo do supino tem por objetivo ampliar a resistência muscular gradualmente.'
    );

final Exercise flexao = 
    Exercise(
        id: 2, image: 'assets/images/w4.jpg',  name: 'Flexão com peso',
        info: 'Ao invés de apoiar a palma das mãos no chão, segure nas parallette bars ou nos halteres, que devem ser posicionados em posições paralelas, na altura dos ombros, rente ao tronco.'
    );

final Exercise rosca = 
    Exercise(
        id: 3, image: 'assets/images/w3.jpg',  name: 'Rosca concentrada',
        info: 'Rosca concetrada é um exercício físico de treinamento de força. O exercício é realizado com um banco e um halteres'
    );

final Exercise levantamento = 
    Exercise(
        id: 4, image: 'assets/images/w2.jpg',  name: 'Levantamento com barra',
        info: 'bla bla bla'
    );

final Exercise remada = 
    Exercise(
        id: 5, image: 'assets/images/w1.jpg',  name: 'Remada alta',
        info: 'blo blo blo'
    );

List<Exercise> training = [flexao, rosca, levantamento, remada, supino];



class Detail {
  String title;
  String description;

  Detail({this.title, this.description});
}

final detailsList = [
  Detail(
      title: "New York City",
      description:
          "From a central park, to a broadway theatre and the iconic Times square"),
  Detail(
      title: "Cape Town",
      description:
          "At the tip of Africa, you will find a city that has it all to offer. Explore Table Mountain and Robben Island"),
  Detail(
      title: "Switzerland",
      description:
          "Breathtaking lakes, villages and the high peaks of the Alps for amazing Ski resorts"),
];