import 'package:flutter/material.dart';

class ModelSheetTextField extends StatelessWidget {
  ModelSheetTextField({
    required this.initialValue,
    required this.labelText,
    required this.onChange,
    Key? key,
  }) : super(key: key);
  String initialValue;
  String labelText;
  Function onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextFormField(
            onChanged: (value) => onChange,
            initialValue: initialValue,
            // onChanged: ((value) => context
            //     .read<LoginBloc>()
            //     .add(LoginPasswordChanged(password: value))),
            decoration: InputDecoration(
              fillColor: Colors.black12,
              filled: true,
              border: const OutlineInputBorder(
                // width: 0.0 produces a thin "hairline" border
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide.none,
              ),
              label: Text(labelText),
            ),
            textAlign: TextAlign.center),
      ),
    );
  }
}
