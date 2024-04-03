import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_gallery/core/styles.dart';
import 'package:my_gallery/feature/home/presentaion/manger/home_cubit.dart';
import 'package:my_gallery/feature/home/presentaion/manger/home_state.dart';
import 'package:my_gallery/feature/home/presentaion/widgets/custom_home_material_button.dart';

class HomeActionSection extends StatelessWidget {
  const HomeActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Homecubit, HomeState>(
      listener: (context, state) {
        if (state is UploadSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'image upload successfully',
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        return Row(
          children: [
            CustomHomeMaterialButton(
              style: AppStyle.textStyle20,
              label: 'log out',
              image: 'assets/images/logout.png',
              color: Colors.white.withOpacity(0.57),
              onPresse: () {
                GoRouter.of(context).pushReplacement('/');
              },
            ),
            const SizedBox(
              width: 30.0,
            ),
            CustomHomeMaterialButton(
              style: AppStyle.textStyle20,
              label: 'upload',
              image: 'assets/images/upload.png',
              color: Colors.white.withOpacity(0.57),
              onPresse: () {
                chooseBetweenCameraAndGallery(context);
              },
            ),
          ],
        );
      },
    );
  }
}

//

Future<dynamic> chooseBetweenCameraAndGallery(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) => Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 260),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white.withOpacity(0.4),
              ),
              height: MediaQuery.of(context).size.height * 0.1,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomHomeMaterialButton(
                      style: AppStyle.textStyle27,
                      label: 'Gallary',
                      image: 'assets/images/gallery.png',
                      color: const Color(0xFFEFD8F9),
                      onPresse: () {
                        Homecubit.get(context)
                            .uploadImage(source: ImageSource.gallery);
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    CustomHomeMaterialButton(
                      style: AppStyle.textStyle27,
                      label: 'Camera',
                      image: 'assets/images/cam.png',
                      color: const Color(0xFFEBF6FF),
                      onPresse: () {
                        Homecubit.get(context)
                            .uploadImage(source: ImageSource.camera);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ));
}
