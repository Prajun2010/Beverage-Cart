import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final double? buttonRadius;
  final Widget? child;
  final Function()? onTap;
  const GradientButton({
    Key? key,
    this.child,
    this.onTap,
    this.buttonRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            buttonRadius ?? 25,
          ),
          gradient: LinearGradient(
            stops: const [0.0, 1.0],
            colors: [
              AppColor.buttonColor2,
              AppColor.buttonColor1,
            ],
          ),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}

class AppTextButton extends StatelessWidget {
  final void Function()? onTap;
  final Color? buttonColor, textColor;
  final String? text;
  final TextStyle? textStyle;
  const AppTextButton({
    Key? key,
    this.onTap,
    this.text,
    this.buttonColor,
    this.textColor,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: buttonColor ?? AppColor.buttonColor2,
        ),
        child: Text(
          text ?? 'Try again',
          style: textStyle ??
              Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(color: textColor ?? AppColor.white),
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    this.text,
    this.onPressed,
    this.color,
    this.borderRadius,
    this.height,
    this.width,
    this.textStyle,
    this.enableElevation = true,
    this.padding,
    this.isLoading = false,
  }) : super(key: key);
  final String? text;
  final bool enableElevation;
  final Color? color;
  final TextStyle? textStyle;
  final double? borderRadius;
  final double? height;
  final double? width;
  final bool? isLoading;
  final EdgeInsetsGeometry? padding;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: color ?? AppColor.buttonColor2.withOpacity(1),
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          boxShadow: enableElevation
              ? [
                  BoxShadow(
                    color: AppColor.neutral.withOpacity(0.5),
                    offset: const Offset(0, 1),
                    blurRadius: 1.5,
                  ),
                ]
              : null,
        ),
        width: width ?? double.infinity,
        child: Center(
          child: Padding(
            padding: padding ?? const EdgeInsets.symmetric(vertical: 16),
            child: isLoading!
                ? CircularProgressIndicator(
                    color: AppColor.white,
                  )
                : Text(
                    text ?? 'Okay',
                    style: textStyle ??
                        Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.white),
                  ),
          ),
        ),
      ),
    );
  }
}

class CustomBorderTextButton extends StatelessWidget {
  final void Function()? onTap;
  final String? text;
  final Color? textColor;
  final IconData? icon;

  const CustomBorderTextButton({
    Key? key,
    this.onTap,
    this.text,
    this.textColor,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: textColor ?? AppColor.buttonColor2.withOpacity(1)),
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          text!,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                fontWeight: FontWeight.w500,
                color: textColor ?? AppColor.buttonColor2.withOpacity(1),
              ),
        ),
      ),
    );
  }
}

class AppIconButton extends StatelessWidget {
  final Color? backgroundColor;
  final double? radius;
  final IconData? buttonIcon;
  final void Function()? onTap;

  const AppIconButton({
    Key? key,
    this.backgroundColor,
    this.radius,
    this.buttonIcon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: backgroundColor ?? AppColor.backgroundSecond,
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 8)),
            boxShadow: [
              BoxShadow(
                color: AppColor.neutral,
                offset: const Offset(1, 2),
                blurRadius: 3,
              )
            ]),
        child: Icon(
          buttonIcon ?? Icons.person_outline,
          color: AppColor.white,
        ),
      ),
    );
  }
}
