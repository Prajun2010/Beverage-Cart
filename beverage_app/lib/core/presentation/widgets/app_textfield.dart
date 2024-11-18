import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:beverage_app/core/presentation/style/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatelessWidget {
  final String? labelText, hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? readOnly, obscureText, autofocus, showCursor;
  final int? maxLines, maxLength;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final InputDecoration? inputDecoration;
  final TextAlign? textAlign;
  final FocusNode? focusNode;
  final IconData? prefixIcon;
  final bool? enableLabel;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final double? borderRadius;
  final Color? borderColor;
  final bool? enableFilled;
  final Color? filledColor;
  final bool? enableInteraction;
  final void Function()? onTap;

  final double? width;
  const AppTextField({
    Key? key,
    this.controller,
    this.keyboardType,
    this.readOnly = false,
    this.obscureText = false,
    this.autofocus = false,
    this.showCursor = false,
    this.enableLabel = false,
    this.maxLines,
    this.hintText,
    this.maxLength,
    this.onChanged,
    this.validator,
    this.inputFormatters,
    this.inputDecoration,
    this.labelText,
    this.focusNode,
    this.textAlign = TextAlign.start,
    this.prefixIcon,
    this.width,
    this.hintStyle,
    this.labelStyle,
    this.borderRadius,
    this.borderColor,
    this.enableFilled,
    this.filledColor,
    this.enableInteraction,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        onTap: onTap,
        enableInteractiveSelection: enableInteraction ?? true,
        showCursor: showCursor,
        autofocus: autofocus!,
        focusNode: focusNode,
        controller: controller,
        keyboardType: keyboardType,
        readOnly: readOnly!,
        obscureText: obscureText!,
        maxLines: maxLines,
        maxLength: maxLength,
        onChanged: onChanged,
        validator: validator,
        textAlign: textAlign!,
        inputFormatters: inputFormatters,
        decoration: inputDecoration ??
            _appInputDecoration(
              labelStyle: labelStyle,
              hintStyle: hintStyle,
              hintText: hintText,
              labelText: labelText,
              prefixIcon: prefixIcon,
              borderRadius: borderRadius,
              borderColor: borderColor,
              filledColor: filledColor,
              enableFilled: enableFilled,
            ),
      ),
    );
  }
}

/* App custom input decoration is defined over here */

InputDecoration _appInputDecoration({
  String? labelText,
  TextStyle? labelStyle,
  TextStyle? hintStyle,
  String? hintText,
  IconData? prefixIcon,
  double? borderRadius,
  Color? borderColor,
  bool? enableFilled,
  Color? filledColor,
}) =>
    InputDecoration(
      prefixIcon: prefixIcon != null
          ? Icon(
              prefixIcon,
              size: 20,
            )
          : null,
      labelText: labelText,
      labelStyle: labelStyle,
      hintStyle: hintStyle,
      hintText: hintText,
      border: _border,
      filled: enableFilled,
      fillColor: filledColor,
      focusedBorder: _border.copyWith(
        borderSide: BorderSide(
          color: borderColor ?? AppColor.focusBorder,
        ),
      ),
      counterText: '',
      isDense: true,
      enabledBorder: _border.copyWith(
        borderSide: BorderSide(color: borderColor ?? AppColor.neutral),
        borderRadius: BorderRadius.all(
          Radius.circular(
            borderRadius ?? appDefaultRadius,
          ),
        ),
      ),
      errorBorder: _errorBorder.copyWith(
          borderRadius: BorderRadius.all(
              Radius.circular(borderRadius ?? appDefaultRadius))),
      focusColor: AppColor.transparent,
    );

/* Outline border for focus and noraml field*/
final _border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(appDefaultRadius),
    borderSide: BorderSide(color: AppColor.neutral));

/* Outline border for error field */
final _errorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(appDefaultRadius),
  borderSide: BorderSide(color: AppColor.danger),
);
