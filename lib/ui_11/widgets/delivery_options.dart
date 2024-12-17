import 'package:flutter/material.dart';

class DeliveryOptions extends StatefulWidget {
  final String text;
  final IconData icon;
  const DeliveryOptions({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  State<DeliveryOptions> createState() => _DeliveryOptionsState();
}

class _DeliveryOptionsState extends State<DeliveryOptions> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Row(
        children: [
          Icon(
            widget.icon,
            size: 24,
            color: _isSelected ? Color.fromRGBO(114, 3, 255, 1) : Colors.black,
          ),
          const SizedBox(width: 18),
          Text(
            widget.text,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 17,
              color: _isSelected
                  ? Color.fromRGBO(114, 3, 255, 1)
                  : const Color.fromRGBO(149, 134, 168, 1),
            ),
          ),
          SizedBox(width: size.width * .3),
          if (_isSelected)
            const Icon(
              Icons.check,
              color: Color.fromRGBO(114, 3, 255, 1),
            ),
        ],
      ),
    );
  }
}
