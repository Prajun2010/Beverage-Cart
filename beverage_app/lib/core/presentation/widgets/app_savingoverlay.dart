import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:flutter/material.dart';

class AppSavingOverlay extends StatelessWidget {
  final bool isSaving;
  final String? text;
  const AppSavingOverlay({
    Key? key,
    required this.isSaving,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        duration: const Duration(milliseconds: 150),
        color: isSaving
            ? AppColor.appTextColor.withOpacity(0.8)
            : AppColor.transparent,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text ?? 'Processing ...',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: AppColor.white),
              ),
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
