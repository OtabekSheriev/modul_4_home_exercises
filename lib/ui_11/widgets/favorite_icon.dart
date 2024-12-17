import 'package:flutter/material.dart';

class FavoriteIcon extends StatefulWidget {
  final double height;
  final double width;
  const FavoriteIcon({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isFavorited = false;

  _FavoriteIconState();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color.fromRGBO(217, 208, 227, 1),
          ),
        ),
        child: IconButton(
          onPressed: () {
            setState(() {
              isFavorited = !isFavorited;
            });
          },
          icon: Icon(
            isFavorited ? Icons.favorite : Icons.favorite_border,
          ),
          color: isFavorited
              ? Colors.red
              : const Color.fromARGB(255, 151, 91, 230),
          iconSize: 23,
        ));
  }
}
