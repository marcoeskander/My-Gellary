import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_gallery/constant.dart';
import 'package:my_gallery/feature/home/presentaion/manger/home_state.dart';

import '../../../../core/uitls/api_service.dart';

class Homecubit extends Cubit<HomeState> {
  Homecubit() : super(HomeInitialstate());
  static Homecubit get(context) => BlocProvider.of(context);
  APIService apiService = APIService();

  XFile? image;
  ImagePicker picker = ImagePicker();

  Future<void> uploadImage({
    required ImageSource source,
  }) async {
    image = await picker.pickImage(source: source);

    if (image != null) {
      upload(data: image);
    }
  }

  void upload({XFile? data}) async {
    emit(UploadLoadingstate());
    apiService
        .post(
            endPoint: 'upload',
            token: token,
            data: FormData.fromMap({
              'img': await MultipartFile.fromFile(
                data!.path,
                filename: data.path.split('/').last,
              ),
            }))
        .then((value) {
      getimage();
      emit(UploadSuccessState());
    }).catchError((error) {
      emit(UploadErrorState(error.toString()));
    });
  }

  List<String> images = [];
  void getimage() {
    images = [];
    emit(GetLoadingstate());
    apiService
        .get(
      token: token,
      endPoint: 'my-gallery',
    )
        .then((value) {
      for (var element in value["data"]["images"]) {
        images.add(element);
      }
      emit(GetSuccessState());
    }).catchError((error) {
      emit(GetErrorState(error.toString()));
    });
  }
}
