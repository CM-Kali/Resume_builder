import 'package:flutter/material.dart';
class customTextField extends StatelessWidget {
  final String label;
  final int maxlines;
  final Function(String) onchange;
  const customTextField({
    required this.label,
    this.maxlines=1,
    required this.onchange,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextField(
        maxLines: maxlines,
        onChanged: onchange,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          )
        ),

      ),
    );
  }
}
