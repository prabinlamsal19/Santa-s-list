import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

import '../extensions/extensions.dart';
import '../themes/themes.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      required this.onChanged,
      this.keyboardType,
      this.textInputAction,
      this.errorText,
      this.initialValue,
      this.readOnly,
      required this.controller});

  final String labelText;
  final TextEditingController controller;
  final String? errorText;
  final String? initialValue;
  final Function(String) onChanged;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool? readOnly;

  @override
  State<CustomTextFormField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextFormField> {
  // Use it to change color for border when textFiled in focus
  final FocusNode _focusNode = FocusNode();

  // Color for border
  Color _borderColor = AppColors.grey;

  @override
  void initState() {
    super.initState();
    // Change color for border if focus was changed
    _focusNode.addListener(() {
      setState(() {
        _borderColor = _focusNode.hasFocus ? AppColors.primary : AppColors.grey;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: _borderColor),
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        TextFormField(
          controller: widget.controller,
          focusNode: _focusNode,
          autocorrect: false,
          readOnly: widget.readOnly ?? false,
          textInputAction: widget.textInputAction ?? TextInputAction.done,
          keyboardType: widget.keyboardType,
          initialValue: widget.initialValue,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            labelStyle: AppStyles.text14Px.grey,
            border: InputBorder.none,
            labelText: widget.labelText,
            errorText: widget.errorText,
          ),
        ).px(12),
      ],
    );
  }
}
