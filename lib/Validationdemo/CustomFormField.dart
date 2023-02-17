import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CustomFormField extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return CustomFormField();
  }
}
class CustomFormFieldfile extends StatelessWidget {
  const CustomFormFieldfile({
    Key? key,
    required this.hintText,
    this.inputFormatters,
    this.validator,
  }) : super(key: key);
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    var widget;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        inputFormatters: widget.inputFormatters,
        validator: widget.validator,
        decoration: InputDecoration(hintText: widget.hintText),
      ),
    );
  }
}


