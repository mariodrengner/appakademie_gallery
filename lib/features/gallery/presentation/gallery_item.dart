import 'package:flutter/material.dart';

class GalleryItem extends StatelessWidget {
  final String imageTitle;
  final String imageDate;
  final String imageDescription;
  final String imagePath;

  const GalleryItem({super.key, required this.imageTitle, required this.imageDate, required this.imageDescription, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(imagePath, height: 200, width: double.infinity, fit: BoxFit.cover),
          SizedBox(
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black.withAlpha(0), Colors.black.withAlpha(255)],
                ),
              ),
              child: Center(child: Text(imageTitle, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)))
            )
          ),
        ],
      ),
    );
  }
}
