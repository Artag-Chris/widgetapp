import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
      {required this.title, required this.caption, required this.imageUrl});
}

final slides = <SlideInfo>[
  SlideInfo(
      title: "Busca la Comida",
      caption: "lorem ipsum lorem ipsum lorem ipsum",
      imageUrl: "assets/images/1.png"),
  SlideInfo(
      title: "Entrega rapida",
      caption:
          "Laboris velit sint non dolor ea pariatur Lorem. Elit magna ipsum fugiat voluptate fugiat fugiat id ullamco occaecat anim voluptate exercitation cupidatat. Aliquip adipisicing velit ad amet id sunt amet officia aute adipisicing aliquip excepteur mollit pariatur. Nostrud voluptate occaecat mollit minim non. Consectetur elit proident excepteur sit minim incididunt do in laborum proident non sint fugiat in. Sunt nisi ullamco culpa eiusmod irure labore adipisicing proident eu et ex. Consectetur commodo excepteur proident in dolor ullamco pariatur aute veniam nostrud eiusmod officia anim.",
      imageUrl: "assets/images/2.png"),
  SlideInfo(
      title: "Disfruta la comida",
      caption:
          "Minim minim non et non. Tempor cillum tempor ad ea ad cupidatat consectetur anim eiusmod non enim et id. Anim voluptate nostrud cupidatat in eu. Cupidatat fugiat anim commodo sint proident consectetur proident aute proident. Reprehenderit sit voluptate ipsum pariatur. Labore irure excepteur proident esse qui esse sit occaecat excepteur nulla qui.",
      imageUrl: "assets/images/3.png"),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewControler = PageController();

  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageViewControler.addListener(() {
      final page = pageViewControler.page ?? 0;

      if (!endReached && page >= slides.length - 1.5) {
        setState(() {
          endReached = true;
        });
      }

    
    });
  }

  @override
  void dispose() {
   pageViewControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewControler,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slidesData) => _Slide(
                    slidesData.title, slidesData.caption, slidesData.imageUrl))
                .toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
                child: const Text("Saltar Tutorial"),
                onPressed: () {
                  context.pop();
                }),
          ),
          endReached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text("Comenzar"),
                    ),
                  ))
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(this.title, this.caption, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(imageUrl)),
          const SizedBox(height: 20),
          Text(title,
              style:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(caption,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16)),
        ],
      )),
    );
  }
}
