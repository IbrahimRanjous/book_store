import 'package:flutter/material.dart';

import '../../../../../../core/utils/color_extenstion.dart';
import '../../../../../../core/utils/styles.dart';

class ClickableItem extends StatelessWidget {
  final String name;
  final bool isSelected;
  final VoidCallback onTap;

  const ClickableItem({
    super.key,
    required this.name,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      splashColor: TColor.primary,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          name,
          style: Styles.TextStyle20.copyWith(
            color: isSelected ? TColor.text : TColor.subTitle,
          ),
        ),
      ),
    );
  }
}
