import 'package:bookly_app/features/search/presentation/viewmodel/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Custom_OutlineBorder.dart';

class CustomSearchTextField extends StatelessWidget {
   const CustomSearchTextField({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: SearchCubit.get(context).searchController,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {
            if (SearchCubit.get(context).searchController.text.isNotEmpty) {
              SearchCubit.get(context).fetchSearchBooks(
                  search: SearchCubit
                      .get(context)
                      .searchController
                      .text);
            }
          },
          icon: const Opacity(
            opacity: .8,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
        ),
      ),
    );
  }

}