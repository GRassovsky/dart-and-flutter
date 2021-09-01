// Import flutter helper library
import 'package:flutter/material.dart';

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
  
  // _Must_ define a 'build' method that returns
  // the widgets that this widget will show
  Widget build(context)
  {
    return MaterialApp(  
      home: Scaffold(
        appBar: AppBar(
          title: Text("Let's see some images!"),
        ),
        body: Text('Image count: ${counter}'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ),
      ),
    );
  }

  
}



class AppWidget
{

}