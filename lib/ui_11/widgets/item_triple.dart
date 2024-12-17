import 'package:flutter/material.dart';

class ItemTriple extends StatelessWidget {
  const ItemTriple({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 258),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 8,
            width: 8,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 8,
            width: 8,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.5),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.5),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
