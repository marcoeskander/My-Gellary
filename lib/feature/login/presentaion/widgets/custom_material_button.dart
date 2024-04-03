import 'package:flutter/material.dart';
import 'package:my_gallery/core/styles.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.label,
    required this.onPresse,
  });

  final String label;
  final Function() onPresse;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPresse,
      textColor: Colors.white,
      color: const Color(0xff7BB3FF),
      elevation: 0.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: AppStyle.textStyle18,
          ),
        ],
      ),
    );
  }
}
