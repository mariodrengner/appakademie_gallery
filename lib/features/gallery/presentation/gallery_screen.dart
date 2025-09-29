import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../data/gallery_data.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: galleryData.length,
      itemBuilder: (_, index) => GestureDetector(
        onTap: () => context.push('/gallery/$index'),
        child: galleryData[index],
      ),
    );
  }
}
