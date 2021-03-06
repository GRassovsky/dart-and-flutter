import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget
{
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context)
  {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image)
  {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: <Widget> [
          Padding(
            child: Image.network(image.url),
            padding: EdgeInsets.only(bottom: 8.0),
          ),
          Text(image.title),
        ],
      ),
    );
  }

}