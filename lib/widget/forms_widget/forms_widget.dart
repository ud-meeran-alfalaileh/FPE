import 'package:flutter/material.dart';
import 'package:tasks_flutter/model/froms_model.dart';

// ignore: must_be_immutable
class FormWidget extends StatefulWidget {
  FormWidget({required this.form, Key? key}) : super(key: key);
  Forms form;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        readOnly: widget.form.enableText,
        inputFormatters: widget.form.inputFormat,
        keyboardType: widget.form.type,
        onChanged: widget.form.onChange,
        // validator: widget.form.validator,
        obscureText: widget.form.invisible,
        decoration: InputDecoration(
            suffixIcon: widget.form.icon,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50))),
            labelText: widget.form.label,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: widget.form.hintText),
      ),
    );
  }
}
