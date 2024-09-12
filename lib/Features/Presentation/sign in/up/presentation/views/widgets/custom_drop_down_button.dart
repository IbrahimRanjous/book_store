import 'package:book_store/core/utils/color_extenstion.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({
    super.key,
    required this.itemsList,
    required String hint,
  });

  final List<String> itemsList;

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String hint = 'Choose';
  late String _currentHint;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentHint = hint;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: 0.5),
        color: TColor.textBox,
        borderRadius: BorderRadius.circular(20),
      ),
      child: DropdownButton(
        isExpanded: true,
        hint: Text(_currentHint),
        underline: Container(),
        items: widget.itemsList.map((name) {
          return DropdownMenuItem(
            value: name,
            child: Text(name),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _currentHint = value ?? '';
          });
        },
      ),
    );
  }
}
