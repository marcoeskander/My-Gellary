abstract class HomeState {}

class HomeInitialstate extends HomeState {}

class UploadLoadingstate extends HomeState {}

class UploadSuccessState extends HomeState {
  // late final HOmeModel HOmeModel;
  UploadSuccessState();
}

class UploadErrorState extends HomeState {
  late final String eerror;
  UploadErrorState(this.eerror);
}

class GetLoadingstate extends HomeState {}

class GetSuccessState extends HomeState {
  // late final HOmeModel HOmeModel;
  GetSuccessState();
}

class GetErrorState extends HomeState {
  late final String eerror;
  GetErrorState(this.eerror);
}
