import 'package:flutter/material.dart';
import 'package:my_gallery/core/styles.dart';
import 'package:svg_flutter/svg_flutter.dart';

class HomeHeadSection extends StatelessWidget {
  const HomeHeadSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 25.0),
              child: Text(' Welcome \n mina',
                  style: AppStyle.textStyle32, textAlign: TextAlign.center),
            ),
            const Spacer(),
            Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/head.svg',
                  width: 120,
                  height: 150,
                  alignment: Alignment.topRight,
                ),
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWvIhCArXcpiDOzrRTpQsdbPTbOt-IEKQnkk_3zWfWoP9BNUnOLfan3WHjg_CL7i2JvUI&usqp=CAU'),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
