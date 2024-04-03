import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_gallery/constant.dart';
import 'package:my_gallery/core/routing.dart';
import 'package:my_gallery/feature/login/presentaion/manger/login_cubit.dart';
import 'package:my_gallery/feature/login/presentaion/manger/login_state.dart';

import 'package:my_gallery/feature/login/presentaion/widgets/custom_material_button.dart';
import 'package:my_gallery/feature/login/presentaion/widgets/text_input_field.dart';

import '../../../../core/styles.dart';

class LoginActionSection extends StatelessWidget {
  const LoginActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var nameTextEditingController = TextEditingController();
    var passwordTextEditingController = TextEditingController();
    var formkey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => Logincubit(),
      child: BlocConsumer<Logincubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            token = state.loginModel.token;
            GoRouter.of(context).push(AppRouter.lHome);
          }
        },
        builder: (context, state) {
          return Form(
            key: formkey,
            child: Column(
              children: [
                Text(
                  'LOG IN',
                  style: AppStyle.textStyle30,
                ),
                const SizedBox(height: 30.0),
                TextInputWidget(
                  textEditingController: nameTextEditingController,
                  textInputType: TextInputType.name,
                  hintText: 'User Name',
                  valdiators: (String? value) {
                    if (value!.isEmpty) {
                      return 'email must not be empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30.0),
                TextInputWidget(
                  textEditingController: passwordTextEditingController,
                  textInputType: TextInputType.name,
                  hintText: 'password',
                  valdiators: (String? value) {
                    if (value!.isEmpty) {
                      return 'password must not be empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30.0),
                CustomMaterialButton(
                  label: 'SUBMIT',
                  onPresse: () {
                    if (formkey.currentState!.validate()) {
                      Logincubit.get(context).uaerlogin(
                          email: nameTextEditingController.text,
                          password: passwordTextEditingController.text);
                    }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
