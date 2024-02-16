import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/pop_up_menu_kullanimi.dart';

void main() {
  debugPrint('Main Metodu calisiti');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('MyApp build calisiti');
    return MaterialApp(
      title: 'My App Page ',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
          appBar: AppBar(
            actions: [PopUpMenuKullanimi()],
            backgroundColor: Colors.green,
            title: Text('Pop Up Menu Kullanimi'),
          ),
          body: PopUpMenuKullanimi()),
    );
  }
}
