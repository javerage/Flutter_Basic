import 'package:flutter/material.dart';
import 'package:widgetgallery/resources/app_resources.dart';
import 'package:widgetgallery/themes/app_theme.dart';

class ImageCardWidget extends StatelessWidget {
  const ImageCardWidget({
    Key? key,
    required this.urlImg,
    required this.author,
  }) : super(key: key);

  final String urlImg;
  final String author;
  final TextStyle authorStyle =
      const TextStyle(color: Colors.grey, fontStyle: FontStyle.italic);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
          shadowColor: AppTheme.primaryColor,
          elevation: 10,
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              FadeInImage.assetNetwork(
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
                placeholder: AppResources.loadingImage,
                image: urlImg,
                imageErrorBuilder: (context, exception, stackTrace) =>
                    const Image(image: AssetImage(AppResources.defaultImage)),
              ),
              if (author.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 3, right: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'by $author',
                        style: authorStyle,
                      )
                    ],
                  ),
                )
            ],
          )),
    );
  }
}