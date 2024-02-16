import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class PopUpMenuKullanimi extends StatefulWidget {
  const PopUpMenuKullanimi({super.key});

  @override
  State<PopUpMenuKullanimi> createState() => _PopUpMenuKullanimiState();
}

class _PopUpMenuKullanimiState extends State<PopUpMenuKullanimi> {
  String _secilensehir = 'Ankara';
  List<String> renkler = ['Ankara', 'Bursa', 'Izmir', 'Antalya', 'Isatnbul'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          setState(() {
            _secilensehir == sehir;
          });
        },
        itemBuilder: (BuildContext context) {
          return renkler
              .map(
                (String renkler) => PopupMenuItem(
                  child: Text(renkler),
                  value: renkler,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
