
import 'package:flutter/material.dart';

class DetailListWisata extends StatelessWidget {
  final wisata;

  const DetailListWisata({Key? key, required this.wisata}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(wisata.name),
      ),
      body: Column(
        children: [
          Image.asset(wisata.image),
          SizedBox(
            height: 16,
          ),
          Text(
            wisata.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text('HTM: ${wisata.htm}'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              wisata.description,
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}