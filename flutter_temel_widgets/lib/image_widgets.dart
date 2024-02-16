import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});
  @override
  Widget build(BuildContext context) {
    String _imagesURL =
        'https://pngautos.s3.amazonaws.com/uploads/picture/url/57173/big_with_watermark_chevrolet-camaro-enga-import-dubai-6126.jpg';
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                      child: Image.asset(
                    'assets/images/Camaro.jpg',
                  )),
                ),
                Expanded(
                    child: Container(
                  child: Image.network(_imagesURL),
                  color: Colors.pink,
                )),
                Expanded(
                    child: Container(
                  child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 253, 191, 6),
                        child: Text(
                          'M',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      )),
                )),
              ],
            ),
          ),
          FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading_gif.gif', image: _imagesURL)
        ],
      ),
    );
  }
}
