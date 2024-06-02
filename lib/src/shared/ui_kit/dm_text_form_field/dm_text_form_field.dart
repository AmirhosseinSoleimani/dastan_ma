import 'package:daastane_ma/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DMTextFormField extends StatelessWidget {
  const DMTextFormField({
    super.key,
    required this.controller,
    this.focusNode,
    this.isPasswordField = false,
    this.autocorrect = false,
    this.textInputType = TextInputType.name,
    this.textInputAction,
    this.inputFormatters,
    this.readOnly = false,
    required this.hintText,
    this.suffixIcon,
    this.borderColor,
    this.hintStyle,
    this.style,
  });
  final TextEditingController controller;
  final FocusNode? focusNode;
  final bool? isPasswordField;
  final bool? autocorrect;
  final Color? borderColor;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final bool? readOnly;
  final String hintText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      obscureText: isPasswordField ?? false,
      autocorrect: autocorrect ?? false,
      onTapOutside: (event) {FocusScope.of(context).unfocus();},
      readOnly: readOnly ?? false,
      keyboardType: textInputType ?? ((isPasswordField ?? false) ? TextInputType.visiblePassword : null),
      textInputAction: textInputAction,
      inputFormatters: inputFormatters,
      style: style ?? Theme.of(context).textTheme.displayMedium,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle ?? Theme.of(context).textTheme.bodyMedium,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: borderColor ?? Theme.of(context).colorScheme.onSecondary,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12))
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: borderColor ?? Theme.of(context).colorScheme.onSecondary,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12))
        ),
      ),
    );
  }
}