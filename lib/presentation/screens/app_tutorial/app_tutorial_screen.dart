import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Buscar comida',
      'Labore laboris sint excepteur reprehenderit amet culpa officia.',
      'assets/images/1.png'),
  SlideInfo(
      'Entrega rapida',
      'Labore laboris sint excepteur reprehenderit amet culpa officia.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta comida',
      'Labore laboris sint excepteur reprehenderit amet culpa officia.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewControler =
      PageController(); //para ver el avance del pageview
  bool endReached = false;
//el init estate es pare de ciclo de vida de  los statefulwidgets
  @override
  void initState() {
    super.initState();

    pageViewControler.addListener(() {
      final page = pageViewControler.page ?? 0;

      if (!endReached&&page>= (slides.length-1.5)){
        setState(() {
          endReached= true; 
        });
      }

      //nota: esto se imprime un monton de veces
    });
  }

  @override
  void dispose() {
    //para limpiar los listener y no saturar memorria
    pageViewControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewControler,
            physics: const BouncingScrollPhysics(),
            //es un iterable
            children: slides
                .map((slideData) => _Slide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl))
                .toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton.icon(
              onPressed: () => context.pop(),
              label: const Text('Salir'),
              icon: Icon(Icons.arrow_back),
            ),
          ),
          endReached ? Positioned(
                  bottom: 50,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () {},
                      child: const Text('Comenzar'),
                    ),
                  ))
              : SizedBox()
        ],
      ),
    );
  }
}

//recibe la info del slide
class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    //
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //aqui se muestra la imagen
              Image(image: AssetImage(imageUrl)),
              const SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: titleStyle,
              ),
              const SizedBox(height: 10),
              Text(
                caption,
                style: captionStyle,
              )
            ],
          ),
        ));
  }
}
