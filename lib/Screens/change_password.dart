import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  final password = TextEditingController();
  final rePassword = TextEditingController();
  double submitBtnOpacity = 0.5;
  final _appBar = AppBar(
    backgroundColor: Colors.transparent.withOpacity(1),
  );
  void _submitForm() {
    final isValid = _formKey.currentState.validate();
    if (isValid) {
      //TODO: Enter Backend code to submit form

    }
  }

  void _changeSubmitColor() {
    setState(() {
      if (password.toString().isNotEmpty && rePassword.toString().isNotEmpty) {
        submitBtnOpacity = 1;
      } else {
        submitBtnOpacity = 0.5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.3), BlendMode.dstATop),
              image: AssetImage('assets/images/basket_ball123.png'))),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: _appBar,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/logo_basket_ball.png'),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Reset your password',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    _newPasswordTextField(),
                    _rePasswordTextField(),
                    GestureDetector(
                      onTap: () {
                        _submitForm();
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          height: MediaQuery.of(context).size.height * 0.07,
                          margin: EdgeInsets.symmetric(vertical: 30),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(submitBtnOpacity),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'submit',
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _rePasswordTextField() {
    return TextFormField(
      controller: rePassword,
      onChanged: (value) {
        _changeSubmitColor();
      },
      validator: (value) {
        _changeSubmitColor();
        if (value.isEmpty) {
          return "Repassword is required";
        }

        return null;
      },
      decoration: InputDecoration(
          labelText: 'retype new password',
          labelStyle: TextStyle(color: Colors.black)),
    );
  }

  Widget _newPasswordTextField() {
    return TextFormField(
      controller: password,
      textInputAction: TextInputAction.next,
      onChanged: (value) {
        _changeSubmitColor();
      },
      validator: (value) {
        _changeSubmitColor();
        if (value.isEmpty) {
          return "Password is required";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'new password',
        labelStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
