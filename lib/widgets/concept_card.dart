import 'package:flutter/material.dart';

class ConceptCard extends StatelessWidget {
  const ConceptCard({Key? key, required this.title, this.imageAsset}) : super(key: key);
  final String title;
  final Image? imageAsset;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Column(
        children: [
          Container(
            width: 150,
            height: 100,
            child: imageAsset,
          ),
          Text(title),
        ],
      ),
    );
  }
}