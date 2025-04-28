import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImageApp extends StatelessWidget {
  const CachedImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Use Cached Imaged in Flutter')),
      body: Center(
        child: CachedNetworkImage(
          imageUrl: 'https://picsum.photos/250?image=9',
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, erroe) => Icon(Icons.error),
        ),
      ),
    );
  }
}
