import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage2 extends StatelessWidget {
  const CachedImage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CachedNetworkImage(imageUrl: 'https://picsum.photos/250?image=9',
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
