import 'package:flutter/material.dart';
import 'package:my_gallery/core/widget/custom_backgreound.dart';
import 'package:my_gallery/feature/home/presentaion/widgets/Home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Background(child: HomeViewBody()));
  }
}
