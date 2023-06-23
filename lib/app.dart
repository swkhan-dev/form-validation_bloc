import 'package:ecommerce_bloc/core/constants/route_constants.dart';
import 'package:ecommerce_bloc/core/utils/routes_config.dart';
import 'package:ecommerce_bloc/ui/screens/auth/signup/signup_bloc/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const double _designWidth = 375;
  static const double _designHeight = 815;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(_designWidth, _designHeight),
      builder: (context, child) => BlocProvider(
        create: (_) => SignupBloc(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Routes.onGenerateRoute,
          initialRoute: RouteName.splash,
        ),
      ),
    );
  }
}
