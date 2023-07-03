import 'package:bookly_app/features/home/presentation/view/Widgets/home_body_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBodyView(),
    );
  }
}
