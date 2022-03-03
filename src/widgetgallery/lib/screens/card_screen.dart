import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widgetgallery/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  static final images = <String>[
    'https://cdn.pixabay.com/photo/2018/08/12/16/59/parrot-3601194_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_960_720.jpg',
    'https://cdn.pixabay.com/photo/2014/10/23/18/56/tiger-500118_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/10/21/14/46/fox-1758183_960_720.jpg',
    'https://cdn.pixabay.com/photo/2013/05/17/07/12/elephant-111695_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/11/29/05/32/rooster-1867562_960_720.jpg'
  ];

  static const String title = 'titulo';
  static const String description =
      'Nostrud esse non nisi fugiat deserunt. Ullamco esse non elit amet adipisicing quis velit aliqua. Nostrud anim laboris ipsum elit minim commodo. Consectetur velit ex velit anim laborum cillum tempor duis nulla voluptate ut id ea. Est commodo ipsum consequat ad ullamco ut aliqua adipisicing amet incididunt laboris elit excepteur enim.';
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String author = 'pixabay';
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cards Screen'),
        ),
        body: ListView(
          children: [
            const SimpleCardWidget(title: title, description: description),
            const SizedBox(),
            ImageCardWidget(
                urlImg: images[Random().nextInt(images.length - 1)],
                author: author),
            const SizedBox(),
            ImageCardWidget(
                urlImg: images[Random().nextInt(images.length - 1)],
                author: author),
            const SizedBox(),
            ImageCardWidget(
                urlImg: images[Random().nextInt(images.length - 1)],
                author: ''),
            const SizedBox(
              height: 30,
            )
          ],
        ));
  }
}
