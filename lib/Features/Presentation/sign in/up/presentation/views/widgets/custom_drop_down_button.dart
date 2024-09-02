import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    super.key,
    required this.hint, required this.itemsList,
  });

  final String hint;
  final List<String> itemsList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: TColor.textBox,
        borderRadius: BorderRadius.circular(20),
      ),
      child: DropdownButton(
        isExpanded: true,
        hint: Text(hint),
        underline: Container(),
        items: itemsList.map((name) {
          return DropdownMenuItem(
            value: name,
            child: Text(name),
          );
        }).toList(),
        onChanged: (value) {},
      ),
    );
  }
}
