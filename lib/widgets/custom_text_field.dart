import 'package:flutter/material.dart';
class customTextField extends StatelessWidget {
  final String label;
  final int maxlines;
  final TextEditingController? controller;
  final Function(String) onchange;
  const customTextField({
    required this.label,
    this.maxlines=1,
    this.controller,
    required this.onchange,


  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextField(
        controller: controller,
        maxLines: maxlines,
        onChanged: (value)=>{
          if(onchange !=Null){
            onchange!(value),
          }
        },
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
