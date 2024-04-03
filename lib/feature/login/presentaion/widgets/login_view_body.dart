import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/styles.dart';
import 'package:my_gallery/feature/login/presentaion/widgets/login_action_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          Text(' My \n Gellary',
              style: AppStyle.textStyle50, textAlign: TextAlign.center),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFFFFFFFF).withOpacity(0.8),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 48),
                child: LoginActionSection(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
