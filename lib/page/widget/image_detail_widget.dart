import 'package:flutter/material.dart';

class ImageDetailWidget extends StatelessWidget {
  final String imageUrl;


  const ImageDetailWidget( {super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ImageDetail"),
      ),
      body: Hero(
        createRectTween: (begin, end) {
          return RectTween(begin: begin, end: end);
        },
        tag: "imageUrl",
        child: const Center(
          child: Image(
            image: AssetImage("images/img.png"),
          ),
        ),
      ),
    );
  }
}
