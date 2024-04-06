import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    '/': (context) => SourcePage(),
    '/detail': (context) => DestinationPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      routes: routes,
      initialRoute: '/',
    );
  }
}

// Halaman Asal
class SourcePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Asal')),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DestinationPage()),
          );
        },
        child: Hero(
          tag: 'avatarTag',
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
            radius: 50,
          ),
        ),
      ),
    );
  }
}

// Halaman Tujuan
class DestinationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Tujuan')),
      body: Center(
        child: Hero(
          tag: 'avatarTag',
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/myavatar.png'),
            radius: 150,
          ),
        ),
      ),
    );
  }
}