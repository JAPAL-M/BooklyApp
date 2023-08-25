import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/core/utils/services_loceator.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/viewModel/Feature_Books_Cubit/feature_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/viewModel/Newest_Books_Cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/splash/presentation/view/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (create) => FeatureBooksCubit(HomeRepoImpl(ApiServices(Dio())))..fetchFeatureBooks()),
        BlocProvider(create: (create) => NewestBooksCubit(HomeRepoImpl(ApiServices(Dio())))..fetchNewestBooks()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: primaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        home: const SplashView(),
      ),
    );
  }
}
