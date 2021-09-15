// Import flutter helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'models/image_model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget
{
  createState()
  {
    return AppState();
  }
}

// Create a class that will be our custom widget
// This class must extend the 'StatelessWidget' base class
class AppState extends State<App>
{
  int counter = 0;
  List<ImageModel> images = [];
  
  void fetchImage() async
  {
    counter++;
    final response = await get(Uri.parse("https://jsonplaceholder.typicode.com/photos/${counter}"));
    final imageModel = ImageModel.fromJson(json.decode(response.body));
    
    setState(()
    {
      images.add(imageModel);
    });
  }

  // _Must_ define a 'build' method that returns
  // the widgets that this widget will show
  Widget build(context)
  {
    return MaterialApp(  
      home: Scaffold(
        appBar: AppBar(
          title: Text("Let's see some images!"),
        ),
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
      ),
    );
  }

  
}
