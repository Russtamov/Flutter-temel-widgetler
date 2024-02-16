import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        value: _secilenSehir,
        onChanged: (String? yeni) {
          setState(() {
            _secilenSehir == yeni;
          });
        },
        hint: Text('Sehir Seciniz'),
        icon: Icon(Icons.place),
        style: TextStyle(color: Colors.green),
        items: [
          DropdownMenuItem(
            child: Text('Bursa Sehri'),
            value: 'Bursa',
          ),
          DropdownMenuItem(
            child: Text('Istanbul Sehri'),
            value: 'Istanbul',
          ),
          DropdownMenuItem(
            child: Text('Izmir Sehri'),
            value: 'Izmir',
          ),
          DropdownMenuItem(
            child: Text('Antalya Sehri'),
            value: 'Antalya',
          )
        ],
      ),
    );
  }
}
