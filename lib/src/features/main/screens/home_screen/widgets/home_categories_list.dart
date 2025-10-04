import 'package:ecomerace_app/src/features/main/models/category.dart';
import 'package:ecomerace_app/src/features/main/screens/home_screen/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:ecomerace_app/src/utils/helper_function/helper.dart';

class HomeCategoriesList extends StatelessWidget {
  const HomeCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Helper.getScreenHeight(context) * 0.22,
      left: 15,
      right: 0,
      child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          ...categories.map(
            (category) => Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CategoryItem(
                name: category.name,
                iconPath: category.iconPath,
                onTap: () {
                  // Handle category tap
                },
              ),
            ),
          ),
          const SizedBox(width: 4),
        ],
      ),
    ),
    );
  }
}
