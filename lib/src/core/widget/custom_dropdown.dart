import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nisha1/src/core/extensions/text_style_extensions.dart';
import 'package:nisha1/src/core/extensions/widget_extensions.dart';
import 'package:nisha1/src/core/themes/app_colors.dart';
import 'package:nisha1/src/core/themes/app_styles.dart';

// class CustomDropdownButton<T> extends FormField<T> {
//   CustomDropdownButton({
//     super.key,
//     this.inputDecoration,
//     this.prefixIcon,
//     this.suffixIcon,
//     this.errorText,
//     this.onSaved,
//     this.validator,
//     this.onChanged,
//     this.autoValidateMode = AutovalidateMode.disabled,
//     this.initialValue,
//     this.hintText,
//     this.hintTextStyle,
//     this.helperText,
//     this.enabled = true,
//     this.items,
//     this.onTap,
//     this.showErrorBorder = false,
//     this.borderRadius = 6.0,
//     this.padding = const EdgeInsets.symmetric(horizontal: 4),
//     this.borderColor,
//     this.labelText,
//   }) : super(
//     onSaved: onSaved,
//     validator: validator,
//     autovalidateMode: autoValidateMode,
//     initialValue: initialValue,
//     enabled: enabled,
//     builder: (FormFieldState<T> state) {
//       BorderSide _borderSide = BorderSide(
//         color: showErrorBorder
//             ? AppColors.errorInputBorderColor
//             : borderColor ?? AppColors.lightGreyColor,
//       );
//
//       return Column(
//         children: [
//           SizedBox(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 if (labelText != null)
//                   Text(
//                     labelText,
//                     style: AppStyles.text14PxMedium.primary,
//                   ),
//                 6.verticalSpace,
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(borderRadius),
//                   ),
//                   child: InputDecorator(
//                     decoration: inputDecoration ??
//                         InputDecoration(
//                           contentPadding: const EdgeInsets.symmetric(
//                               horizontal: 12, vertical: 8),
//                           border: OutlineInputBorder(
//                             borderSide: _borderSide,
//                             borderRadius:
//                             BorderRadius.circular(borderRadius),
//                           ),
//                           errorBorder: OutlineInputBorder(
//                             borderSide: _borderSide,
//                             borderRadius:
//                             BorderRadius.circular(borderRadius),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: _borderSide,
//                             borderRadius:
//                             BorderRadius.circular(borderRadius),
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: _borderSide,
//                             borderRadius:
//                             BorderRadius.circular(borderRadius),
//                           ),
//                           disabledBorder: OutlineInputBorder(
//                             borderSide: _borderSide,
//                             borderRadius:
//                             BorderRadius.circular(borderRadius),
//                           ),
//                           focusedErrorBorder: OutlineInputBorder(
//                             borderSide: _borderSide,
//                             borderRadius:
//                             BorderRadius.circular(borderRadius),
//                           ),
//                           prefixIcon: prefixIcon,
//                           suffixIcon: suffixIcon,
//                           hintText: hintText,
//                           hintStyle: hintTextStyle ??
//                               AppStyles.text12PxRegular.hintTextColor
//                                   .lineHeight(18.h),
//                         ),
//                     isEmpty: state.value == null,
//                     child: DropdownButtonHideUnderline(
//                       child: DropdownButton<T>(
//                         isExpanded: true,
//                         value: state.value,
//                         items: items,
//                         onChanged: enabled
//                             ? (T? newValue) {
//                           state.didChange(newValue);
//                           onChanged?.call(newValue);
//                         }
//                             : null,
//                         onTap: onTap,
//                         dropdownColor: AppColors.whiteColor,
//                         // disabledHint: Text(hintText ?? ''),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           if (errorText != null && errorText.isNotEmpty)
//             Text(
//               errorText,
//               style: AppStyles.text12PxRegular.redColor,
//               textAlign: TextAlign.left,
//             ).py(10)
//           else if (helperText != null)
//             Text(
//               helperText,
//               style: AppStyles.text12PxRegular.inputBorderColor,
//               textAlign: TextAlign.left,
//             ).py(10)
//           else
//             const SizedBox.shrink(),
//         ],
//       );
//     },
//   );
//
//   final InputDecoration? inputDecoration;
//   final Widget? prefixIcon;
//   final Widget? suffixIcon;
//   final String? errorText;
//   final FormFieldSetter<T>? onSaved;
//   final FormFieldValidator<T>? validator;
//   final ValueChanged<T?>? onChanged;
//   final AutovalidateMode autoValidateMode;
//   final T? initialValue;
//   final String? hintText;
//   final TextStyle? hintTextStyle;
//   final String? helperText;
//   final bool enabled;
//   final List<DropdownMenuItem<T>>? items;
//   final VoidCallback? onTap;
//   final bool showErrorBorder;
//   final double borderRadius;
//   final EdgeInsets padding;
//   final Color? borderColor;
//   final String? labelText;
// }

class CustomDropdownButton<T> extends FormField<T> {
  CustomDropdownButton({
    super.key,
    this.inputDecoration,
    this.prefixIcon,
    this.suffixIcon,
    this.errorText,
    this.onSaved,
    this.validator,
    this.onChanged,
    this.autoValidateMode = AutovalidateMode.disabled,
    this.initialValue,
    this.hintText,
    this.hintTextStyle,
    this.helperText,
    this.enabled = true,
    this.onTap,
    this.showErrorBorder = false,
    this.borderRadius = 6.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 4),
    this.borderColor,
    this.labelText,
    required this.items,
  }) : super(
    onSaved: onSaved,
    validator: validator,
    autovalidateMode: autoValidateMode,
    initialValue: initialValue,
    enabled: enabled,
    builder: (FormFieldState<T> state) {
      BorderSide _borderSide = BorderSide(
        color: showErrorBorder
            ? AppColors.errorInputBorderColor
            : borderColor ?? AppColors.lightGreyColor,
      );

      return Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (labelText != null)
                Text(
                  labelText!,
                  style: AppStyles.text12PxMedium.blackColor,
                ),
              4.verticalSpace,
              Container(
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                child: InputDecorator(
                  decoration: inputDecoration ??
                      InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                        ),
                        border: OutlineInputBorder(
                          borderSide: _borderSide,
                          borderRadius: BorderRadius.circular(borderRadius),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: _borderSide,
                          borderRadius: BorderRadius.circular(borderRadius),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: _borderSide,
                          borderRadius: BorderRadius.circular(borderRadius),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: _borderSide,
                          borderRadius: BorderRadius.circular(borderRadius),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: _borderSide,
                          borderRadius: BorderRadius.circular(borderRadius),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: _borderSide,
                          borderRadius: BorderRadius.circular(borderRadius),
                        ),
                        prefixIcon: prefixIcon,
                        suffixIcon: suffixIcon,
                        hintText: hintText,
                        hintStyle: hintTextStyle ??
                            AppStyles.text12PxRegular
                                .hintTextColor
                                .lineHeight(18.h),
                      ),
                  isEmpty: state.value == null,
                  child: DropdownButtonFormField<T>(
                    isExpanded: true, // Ensure the dropdown takes full width
                    value: state.value, // Make sure this matches the selected value
                    items: items,
                    onChanged: enabled
                        ? (T? newValue) {
                      state.didChange(newValue);
                      onChanged?.call(newValue);
                    }
                        : null,
                    onTap: onTap,
                    decoration: InputDecoration(
                      border: InputBorder.none, // Remove the default border of the form field
                      hintText: hintText,
                      hintStyle: hintTextStyle ??
                          AppStyles.text12PxRegular
                              .hintTextColor
                              .lineHeight(18.h),
                    ),
                    validator: validator, // Use the validator
                    dropdownColor: AppColors.whiteColor,
                    hint: hintText != null
                        ? Text(
                      hintText!,
                      style: hintTextStyle ??
                          AppStyles.text12PxRegular
                              .hintTextColor,
                      overflow: TextOverflow.ellipsis,
                    )
                        : null,
                  ),
                ),
              ),
            ],
          ),
          if (errorText != null && errorText!.isNotEmpty)
            Text(
              errorText!,
              style: AppStyles.text12PxRegular.redColor,
              textAlign: TextAlign.left,
            ).py(4)
          else if (helperText != null)
            Text(
              helperText!,
              style: AppStyles.text12PxRegular.inputBorderColor,
              textAlign: TextAlign.left,
            ).py(4)
          else
            const SizedBox.shrink(),
        ],
      );
    },
  );

  final InputDecoration? inputDecoration;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? errorText;
  final FormFieldSetter<T>? onSaved;
  final FormFieldValidator<T>? validator;
  final ValueChanged<T?>? onChanged;
  final AutovalidateMode autoValidateMode;
  final T? initialValue;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final String? helperText;
  final bool enabled;
  final VoidCallback? onTap;
  final bool showErrorBorder;
  final double borderRadius;
  final EdgeInsets padding;
  final Color? borderColor;
  final String? labelText;
  final List<DropdownMenuItem<T>> items;
}
