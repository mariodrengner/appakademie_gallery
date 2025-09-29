import 'package:flutter/material.dart';
import '../data/gallery_data.dart';
import 'gallery_item.dart';

class GalleryDetailScreen extends StatelessWidget {
  final String imageId;

  const GalleryDetailScreen({super.key, required this.imageId});

  @override
  Widget build(BuildContext context) {
    final GalleryItem image = galleryData[int.parse(imageId)];
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(image.imageTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(image.imagePath),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(image.imageDate, style: textTheme.titleMedium),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,),
              child: Text(image.imageDescription, style: textTheme.bodyMedium),
            ),
            SizedBox(height: 32),
          ]
        )
      ),
    );
  }
}
