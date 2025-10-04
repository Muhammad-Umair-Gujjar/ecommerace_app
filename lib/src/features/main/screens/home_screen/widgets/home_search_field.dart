import 'package:flutter/material.dart';

import 'package:ecomerace_app/src/widgets/custom_text_field.dart';
import 'package:ecomerace_app/src/utils/helper_function/helper.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Helper.getScreenHeight(context) * 0.35,
      left: 0,
      right: 0,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(16),
            child: CustomTextField(
              hintText: 'Search in Store',
              prefixIcon: Icons.search_rounded,
            ),
          ),
        ),
      ),
    );
  }
}
