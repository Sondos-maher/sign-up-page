import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  final String text;
  final bool isPassword;
  const CustomTextfield({super.key, required this.text, this.isPassword = false});

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        Text(
          widget.text,
          style: TextStyle(color: Color(0xFF8B8B97), fontSize: 12),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xFFE6E6EC)),
          ),
          child: TextFormField(
            obscureText: widget.isPassword && isObscure,
            style: TextStyle(fontSize: 14, color: Color(0xFF1E1E2D)),
            decoration: InputDecoration(
              border: .none,
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 14),
              suffixIconConstraints: BoxConstraints(minWidth: 24, minHeight: 24),
              suffixIcon: widget.isPassword
                  ? InkWell(
                onTap: () {
                  isObscure = !isObscure;
                  setState(() {});
                },
                child: Icon(
                  isObscure ? Icons.visibility : Icons.visibility_off,
                  size: 18,
                  color: Color(0xFF1E1E2D),
                ),
              )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}