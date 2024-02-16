import 'package:flutter/material.dart';

class TemelButonTurleri extends StatefulWidget {
  const TemelButonTurleri({super.key});

  @override
  State<TemelButonTurleri> createState() => _TemelButonTurleriState();
}

class _TemelButonTurleriState extends State<TemelButonTurleri> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: () {}, child: Text('Text Button')),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Text Button Icon')),
          ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
          ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Elevated Button Icon')),
          OutlinedButton(onPressed: () {}, child: Text('Outline Button')),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(color: Colors.amberAccent, width: 2)),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Outline Button Icon')),
        ],
      ),
    );
  }
}
