import 'package:drop_down_search_field/drop_down_search_field.dart';
import 'package:flutter/material.dart';

class ReusableDropDownSearchFormField<T> extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final List<T> Function(String) suggestionsCallback;
  final String? Function(T?)? validator;
  final void Function(T)? onSuggestionSelected;
  final Widget Function(BuildContext)? noItemsFoundBuilder;
  final Widget Function(BuildContext, T) itemBuilder;

  const ReusableDropDownSearchFormField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.suggestionsCallback,
    required this.itemBuilder,
    this.validator,
    this.onSuggestionSelected,
    this.noItemsFoundBuilder,
    this.labelStyle,
    this.hintStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: labelStyle ?? Theme.of(context).textTheme.displaySmall!.copyWith(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        DropDownSearchFormField<T>(
          hideOnEmpty: true,
          hideOnError: true,
          noItemsFoundBuilder: noItemsFoundBuilder ?? (context) => SizedBox(),
          suggestionsBoxDecoration: SuggestionsBoxDecoration(),
          textFieldConfiguration: TextFieldConfiguration(
            controller: controller,
            style: hintStyle ?? TextStyle(
              fontSize: 14,
              color: Colors.grey[350],
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey[350],
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              filled: true,
              fillColor: Colors.grey[150],
            ),
          ),
          validator: validator != null
              ? (item) {
            if (item == null) {
              return validator!(item as T?);
            }
            return null;
          }
              : null,
          onSuggestionSelected: onSuggestionSelected!,
          suggestionsCallback: suggestionsCallback,
          itemBuilder: itemBuilder,
        ),
      ],
    );
  }
}
