import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    super.key,
    required this.textEditingController,
    required this.textInputType,
    required this.hintText,
    required this.valdiators,
    this.obsecure,
  });
  final bool? obsecure;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final String hintText;
  final String? Function(String?)? valdiators;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: TextFormField(
        controller: textEditingController,
        // obscureText: obsecure!,
        keyboardType: textInputType,
        validator: valdiators,
        decoration: InputDecoration(
          fillColor: Colors.white,
          border: InputBorder.none,
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
