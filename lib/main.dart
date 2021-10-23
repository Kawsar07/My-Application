import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  const List<Choice> choices = const <Choice>[
    const Choice(title: 'Home', icon: Icons.home),
    const Choice(title: 'Contact', icon: Icons.contacts),
    const Choice(title: 'Map', icon: Icons.map),
    const Choice(title: 'Phone', icon: Icons.phone),
    const Choice(title: 'Camera', icon: Icons.camera_alt),
    const Choice(title: 'Setting', icon: Icons.settings),
    const Choice(title: 'Album', icon: Icons.photo_album),
    const Choice(title: 'WiFi', icon: Icons.wifi),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView Demo"),
          backgroundColor: Colors.red,
        ),
        body: Container(
            padding: EdgeInsets.all(12.0),
            child: GridView.builder(
              itemCount: images.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0
              ),
              itemBuilder: (BuildContext context, int index){
                return Image.network(images[index]);
              },
            )),
      ),
    );
  }
}