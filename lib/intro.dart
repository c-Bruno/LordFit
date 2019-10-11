import 'package:intro_slider/intro_slider.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';
//import 'package:video_player/video_player.dart';
//import 'package:minhappteste/data.dart';

class IntroScreenPage extends StatefulWidget {
  @override
  _IntroScreenState createState() => new _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreenPage> {
 // VideoPlayerController _controller;

List<Slide> slides = new List();

  @override
  void initState() {
   super.initState();

   /* _controller = VideoPlayerController.network(
        'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized
        setState(() {});
      });
    */

    slides.add(
      new Slide(
        title: "Bem-vindo",
        description: "Treine a qualquer hora e qualquer lugar. Cadastre-se agora!",
        //pathImage: "assets/images/intro.gif",
        backgroundColor: Color(0xFF000000),
       // backgroundImage: "assets/images/intro.gif",       
      ),
    );


    slides.add(
      new Slide(
        title: "Personal Trainer",
        description: "Treinos feitos sob medida para você treinar onde quiser, com ou sem equipamentos",
        //pathImage: "assets/images/intro2.gif",
        backgroundColor: Color(0xff203152),
         //backgroundImage: "assets/images/intro2.gif",
      ),
    );


    slides.add(
      new Slide(
        title: "RULER",
        description:
        "Não perca tempo e venha fazer parte da resistencia",
        //pathImage: "assets/images/intro3.png",
        backgroundColor: Color(0xFF000000),
      ),
    );
  }

  void onDonePress() {
    Navigator.pushNamed(context, '/login');
  }


  /*void dispose() {
    super.dispose();
    _controller.dispose();
  }
*/
  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
      
    );
  }
}
