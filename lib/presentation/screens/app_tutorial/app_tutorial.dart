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
      'Busca la comida',
      'Eu reprehenderit consequat non commodo consectetur sint nostrud ullamco consequat.',
      'assets/images/1.png'),
  SlideInfo('Entrega Rapida', 'Cillum in do ullamco cillum minim.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Ullamco laboris deserunt anim incididunt voluptate mollit et fugiat laboris mollit sint nulla nisi culpa.',
      'assets/images/3.png')
];

class AppTutorial extends StatefulWidget {
  static const name = 'tutorial';

  const AppTutorial({super.key});

  @override
  State<AppTutorial> createState() => _AppTutorialState();
}

class _AppTutorialState extends State<AppTutorial> {
  late final PageController pageViewController = PageController();
  bool endReached = false;
  int activePage = 0;

  @override
  void initState() {
    super.initState();
    //esto es un listener
    // pageViewController.addListener(() {
    //   final page = pageViewController.page ?? 0;
    //   if (!endReached && page >= slides.length - 1.5) {
    //     //Cuando se ejecute un setState en un StatefulWidget hay que tener cuidado de poner
    //     // las condiciones necesarias para el el setSteate no provoque un ciclo infinito
    //     setState(() {
    //       endReached = true;
    //     });
    //   } else {
    //     setState(() {
    //       endReached = false;
    //     });
    //   }
    //});
  }

//Esto es necesario siempre que se mande llamar un listener
//Para que limpuie ese listener y no usar mas menoria de la necesaria
  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              //El page view crea varies slides superpuestos
              PageView.builder(
                //Se uso hacer un page view controller para poder controlar de mejor manera cada slice
                controller: pageViewController,
                physics: const BouncingScrollPhysics(),
                itemCount: slides.length,
                onPageChanged: (value) {
                  if (value == slides.length - 1) {
                    endReached = true;
                  } else {
                    endReached = false;
                  }

                  setState(() {
                    activePage = value;
                  });
                },
                itemBuilder: (context, index) {
                  final slide = slides[index];
                  return _Slide(
                      title: slide.title,
                      caption: slide.caption,
                      imageUrl: slide.imageUrl);
                },
              ),
              Positioned(
                  right: 20,
                  top: 50,
                  child: TextButton(
                    child: const Text('Salir'),
                    onPressed: () => context.pop(),
                  )),

              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(
                      slides.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                            onTap: () {
                              pageViewController.animateToPage(index,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeIn);
                            },
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: activePage == index
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.black26,
                            )),
                      ),
                    ),
                  )),
              //Este widget se utiliza para mostrar un widget solo cuando se cumpla una condicion
              //como un if
              Visibility(
                visible: endReached,
                child: Positioned(
                    right: 30,
                    bottom: 50,
                    child: FadeInRight(
                      from: 15,
                      delay: const Duration(milliseconds: 400),
                      child: FilledButton(
                        child: const Text('Comenzar'),
                        onPressed: () {
                          context.pop();
                        },
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodyLarge;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageUrl),
            const SizedBox(height: 20),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(height: 10),
            Text(
              caption,
              style: captionStyle,
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
