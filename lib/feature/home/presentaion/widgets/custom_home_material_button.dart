import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeMaterialButton extends StatelessWidget {
  const CustomHomeMaterialButton({
    super.key,
    required this.label,
    required this.onPresse,
    required this.image,
    required this.color,
    required this.style,
  });

  final String label;
  final Function() onPresse;
  final String image;
  final Color color;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPresse,
      textColor: Colors.black,
      color: color,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0.r)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 30.r,
            height: 30.r,
          ),
          const SizedBox(
            width: 5.0,
          ),
          Text(
            label,
            style: style,
          ),
        ],
      ),
    );
  }
}
