import 'package:ecommerce_bloc/core/extensions/widget_extensions.dart';
import 'package:ecommerce_bloc/ui/screens/auth/signup/signup_bloc/signup_bloc.dart';
import 'package:ecommerce_bloc/ui/screens/auth/signup/signup_bloc/signup_events.dart';
import 'package:ecommerce_bloc/ui/screens/auth/signup/signup_bloc/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "";
    String email = "";
    String password = "";
    String phone = "";
    String cnic = "";

    return Scaffold(
      body: SingleChildScrollView(
          child: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Column(
          children: [
            const Expanded(flex: 2, child: SizedBox.shrink()),
            const Text(
              "Signup",
              style: TextStyle(fontSize: 22),
            ),
            40.verticalSpace,
            BlocBuilder<SignupBloc, SignupState>(
              builder: (context, state) => state is SignupErrorState
                  ? Text(
                      state.error,
                      style: const TextStyle(color: Colors.red),
                    )
                  : const SizedBox.shrink(),
            ),
            const Text("Name").align(Alignment.centerLeft),
            CustomTextfield(
              hint: "aaaaaa",
              onChanged: (value) {
                name = value;
                BlocProvider.of<SignupBloc>(context).add(InputChangeSignupEvent(
                    name: name,
                    email: email,
                    password: password,
                    phone: phone,
                    cnic: cnic));
              },
            ),
            20.verticalSpace,
            const Text("Email").align(Alignment.centerLeft),
            CustomTextfield(
              hint: "aaaaa@email.com",
              onChanged: (value) {
                email = value;
                BlocProvider.of<SignupBloc>(context).add(InputChangeSignupEvent(
                    name: name,
                    email: email,
                    password: password,
                    phone: phone,
                    cnic: cnic));
              },
            ),
            20.verticalSpace,
            const Text("Password").align(Alignment.centerLeft),
            CustomTextfield(
              hint: "********",
              isPass: true,
              onChanged: (value) {
                password = value;
                BlocProvider.of<SignupBloc>(context).add(InputChangeSignupEvent(
                    name: name,
                    email: email,
                    password: password,
                    phone: phone,
                    cnic: cnic));
              },
            ),
            20.verticalSpace,
            const Text("Phone").align(Alignment.centerLeft),
            CustomTextfield(
              hint: "+92----------",
              onChanged: (value) {
                phone = value;
                BlocProvider.of<SignupBloc>(context).add(InputChangeSignupEvent(
                    name: name,
                    email: email,
                    password: password,
                    phone: phone,
                    cnic: cnic));
              },
            ),
            20.verticalSpace,
            const Text("CNIC").align(Alignment.centerLeft),
            CustomTextfield(
              hint: "00000-0000000-0",
              onChanged: (value) {
                cnic = value;
                BlocProvider.of<SignupBloc>(context).add(InputChangeSignupEvent(
                    name: name,
                    email: email,
                    password: password,
                    phone: phone,
                    cnic: cnic));
              },
            ),
            40.verticalSpace,
            BlocBuilder<SignupBloc, SignupState>(
                builder: (context, state) => state is SignupLoadingState
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : CustomButton(
                        onPressed: state is SignupInvalidState
                            ? null
                            : () {
                                BlocProvider.of<SignupBloc>(context).add(
                                    SubmittedSignupEvent(
                                        name: name,
                                        email: email,
                                        password: password,
                                        phone: phone,
                                        cnic: cnic));
                              },
                        label: "Signup",
                      )),
            const Expanded(flex: 3, child: SizedBox.shrink())
          ],
        ).padSym(1.sw * 0.05, 0),
      )),
    );
  }
}
