import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFDDCDFF),
            Color(0xFFEA94D7),
            Color(0xFFFFDADA),
            Color(0xFFFFFFFF),
          ],
          begin: FractionalOffset.topRight,
          end: FractionalOffset.bottomCenter,
          stops: [0.4, 0.6, 0.8, 1.0],
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -120.r,
            left: -60.r,
            child: RotatedBox(
              quarterTurns: 4,
              child: SvgPicture.asset(
                "assets/images/backgreound.svg",
                height: 250.h,
                width: 90.w,
              ),
            ),
          ),
          Positioned(
              top: 25.r,
              left: 40.r,
              child: SizedBox(
                width: 100.r,
                height: 100.h,
                child: const Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/images/love_photography.png",
                    )),
              )),
          // Positioned(
          //   top: size.height * 0.4,
          //   left: 30.w,
          //   child: SvgPicture.asset(
          //     "assets/images/image.svg",
          //     height: 180.r,
          //     width: 220.r,
          //   ),
          // ),

          Positioned(
            top: size.height * 0.4,
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/images/image.svg",
                  height: 180.r,
                  width: 220.r,
                ),
                SvgPicture.asset(
                  "assets/images/babel.svg",
                  height: 200.h,
                  width: 200.w,
                ),
              ],
            ),
          ),
          Positioned(
            top: size.height * 0.6,
            right: size.width * 0.25,
            child: SvgPicture.asset(
              "assets/images/video.svg",
              height: 180.r,
              width: 240.r,
            ),
          ),
          child
        ],
      ),
    );
  }
}
