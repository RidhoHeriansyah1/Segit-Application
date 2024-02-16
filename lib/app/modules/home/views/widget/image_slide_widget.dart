import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:segit/app/utils/my_color.dart';

class ImageSlide extends StatelessWidget {
  const ImageSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: MyColor.putih,
      child: SizedBox(
        height: 200,
        child: ImageSlideshow(
          initialPage: 0,
          autoPlayInterval: 10000,
          isLoop: true,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/laravel.png',
                fit: BoxFit.fill,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/Segit1.png',
                width: 300,
                height: 200,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
