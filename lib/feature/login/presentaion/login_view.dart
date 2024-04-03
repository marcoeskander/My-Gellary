import 'package:flutter/material.dart';
import 'package:my_gallery/core/widget/custom_backgreound.dart';
import 'package:my_gallery/feature/login/presentaion/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Background(
        child: LoginViewBody(),
      ),
    );
  }
}
