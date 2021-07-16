import 'package:doorstep/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final TextEditingController controller;
  final Icon? prefixIcon;
  final Widget? prefix;
  final Widget? suffix;
  final List<TextInputFormatter>? inputFormatter;
  final bool? enabled;
  final String? errorText;

  CustomTextField({
    this.labelText,
    required this.controller,
    this.prefixIcon,
    this.inputFormatter,
    this.enabled,
    this.errorText,
    this.prefix, this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: TextField(
        controller: controller,
        enabled: enabled ?? true,
        cursorColor: kAccentColor,
        inputFormatters:
            inputFormatter ?? [FilteringTextInputFormatter.singleLineFormatter],
        decoration: InputDecoration(
          prefix: prefix,
          prefixIcon: prefixIcon,
          suffix: suffix,
          labelText: labelText,
          labelStyle: TextStyle(color: kAccentColor.withOpacity(0.5)),
          errorText: errorText,
          errorStyle: TextStyle(color: Colors.red),
          // hintText: hintText,
          // hintStyle: TextStyle(color: kAccentColor.withOpacity(0.3)),
          focusColor: kAccentColor,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kAccentColor),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kAccentColor),
          ),
          errorBorder: errorText == null
              ? UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                )
              : null,
        ),
      ),
    );
  }
}
