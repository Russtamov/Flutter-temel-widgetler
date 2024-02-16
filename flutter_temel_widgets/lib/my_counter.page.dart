import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('MyHome Build calisiti');
    return (Scaffold(
        appBar: AppBar(
          title: Text(
            'My Counter Page',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Butona basilma miktari",
              style: TextStyle(fontSize: 22),
            ),
            Text(
              _sayac.toString(),
              style: TextStyle(fontSize: 24),
              
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Butona tiklandi ve Sayac degeri $_sayac');
            sayaciArtir();
          },
          child: Icon(Icons.attach_money),
        )));
  }

  void sayaciArtir() {
    setState(() {
      _sayac++;
    });
  }
}
