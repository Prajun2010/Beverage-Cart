import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:beverage_app/core/presentation/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

class AppSearchBox extends StatelessWidget {
  String? hintText;
  bool focusBorder;
  double? borderRadius;
  bool? enableFillColor;
  bool? readOnly;
  Color? fillColor;
  Color? borderColor;
  bool? enableInteraction;
  void Function(String)? onChanged;
  void Function()? onTap;

  AppSearchBox({
    Key? key,
    this.hintText,
    this.onChanged,
    this.focusBorder = true,
    this.enableFillColor = false,
    this.readOnly,
    this.borderRadius,
    this.fillColor,
    this.borderColor,
    this.enableInteraction,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      enableInteraction: enableInteraction ?? true,
      showCursor: true,
      readOnly: readOnly,
      labelText: hintText,
      maxLines: 1,
      onTap: onTap,
      inputDecoration: InputDecoration(
        fillColor: fillColor,
        filled: enableFillColor,
        suffixIcon: const Icon(
          Icons.search,
          size: 20,
        ),
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          borderSide:
              BorderSide(color: borderColor ?? AppColor.neutral, width: 0.2
                  // style: BorderStyle.none,
                  ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          borderSide:
              BorderSide(color: borderColor ?? AppColor.neutral, width: 0.2
                  // style: BorderStyle.none,
                  ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          borderSide:
              BorderSide(color: borderColor ?? AppColor.neutral, width: 0.2
                  // style: BorderStyle.none,
                  ),
        ),

        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          borderSide:
              BorderSide(color: borderColor ?? AppColor.neutral, width: 0.2
                  // style: BorderStyle.none,
                  ),
        ),
        // labelText: labelText,
        hintText: hintText,
      ),
      onChanged: onChanged,
    );
  }
}
