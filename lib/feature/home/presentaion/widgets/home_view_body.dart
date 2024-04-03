// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/feature/home/presentaion/manger/home_cubit.dart';
import 'package:my_gallery/feature/home/presentaion/manger/home_state.dart';
import 'package:my_gallery/feature/home/presentaion/widgets/home_action_section.dart';
import 'package:my_gallery/feature/home/presentaion/widgets/home_head_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Homecubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          color: Colors.white.withOpacity(0.75),
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HomeHeadSection(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                  child: const HomeActionSection(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 25.0,
                    crossAxisSpacing: 25.0,
                    childAspectRatio: 3.0 / 3.0,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                      Homecubit.get(context).images.length,
                      (index) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  Homecubit.get(context).images[index])),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
