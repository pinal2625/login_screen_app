import 'package:flutter/material.dart';

class Textfieldapp extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final String? hintText;
  final Function(String)? onChanged;
  final IconData? iconData;
  final String Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefix;
  final String? errorText;
  const Textfieldapp({
    Key? key,
    this.controller,
    this.keyboardType,
    this.textCapitalization,
    this.obscureText,
    this.textInputAction,
    this.hintText,
    this.onChanged,
    this.validator,
    this.iconData,
    this.suffixIcon,
    this.prefix,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFF5F4F8),
      ),
      child: TextFormField(
        controller: controller,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        autofocus: true,
        autocorrect: false,
        keyboardType: keyboardType ?? TextInputType.name,
        textAlignVertical: TextAlignVertical.center,
        textCapitalization: textCapitalization ?? TextCapitalization.words,
        textInputAction: textInputAction ?? TextInputAction.done,
        obscureText: obscureText ?? false,
        onChanged: onChanged,
        cursorColor: Color(0xFF634AFD),
        cursorWidth: 2,
        decoration: InputDecoration(
          prefix: prefix,
          suffix: suffixIcon,
          suffixIconColor: Color(0xFF252B5C),
          isDense: true,
          hintText: hintText ?? "",
          hintStyle: TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color(0xFF634AFD),
            ),
          ),
        ),
      ),
    );
  }
}
