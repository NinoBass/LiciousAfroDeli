import 'package:flutter/material.dart';
import 'package:LiciousAfroDeli/Components/text_field_container.dart';
import 'package:LiciousAfroDeli/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key key,
    bool obscureText,
    this.onChanged,
    this.hintText,
    this.keyboardType,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _isShowPassWord = false;

  void _showPassWord() {
    setState(() {
      _isShowPassWord = !_isShowPassWord;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: !_isShowPassWord,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: widget.hintText,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
                !_isShowPassWord ? Icons.visibility : Icons.visibility_off),
            color: kPrimaryColor,
            onPressed: _showPassWord,
          ),
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
