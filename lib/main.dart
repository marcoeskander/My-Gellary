import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/uitls/api_service.dart';
import 'package:my_gallery/core/routing.dart';
import 'package:my_gallery/core/simple_bloc_observer.dart';
import 'package:my_gallery/feature/home/presentaion/manger/home_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  APIService.init();
  Bloc.observer = SimpleBlocobserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return BlocProvider(
            create: (context) => Homecubit()..getimage(),
            child: MaterialApp.router(
              routerConfig: AppRouter.router,
              debugShowCheckedModeBanner: false,
            ));
      },
    );
  }
}
