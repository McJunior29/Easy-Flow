import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  final String tile;
  final bool isSelected;
  final VoidCallback onPressed;
  const HomeTile({
    Key? key,
    required this.tile,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 6,
          ),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
          child: Text(
            tile,
            style: TextStyle(
              color: isSelected ? Theme.of(context).primaryColor : Colors.white,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}
