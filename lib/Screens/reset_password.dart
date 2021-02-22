import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();

  double submitBtnOpacity = 0.5;
  //final _appBar = ;
  void _resetForm() {
    final isValid = _formKey.currentState.validate();
    if (isValid) {
      //TODO: Enter Backend code to submit form

    }
  }

  void _changeSubmitColor() {
    setState(() {
      if (_email.toString().isNotEmpty) {
        submitBtnOpacity = 1;
      } else {
        submitBtnOpacity = 0.5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
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
          appBar: AppBar(
            backgroundColor: Colors.transparent.withOpacity(0),
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('assets/images/logo_basket_ball.png'),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Reset Password',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                    ),
                    _emailTextField(),
                    GestureDetector(
                      onTap: () {
                        _resetForm();
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
                              'reset',
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

  Widget _emailTextField() {
    return TextFormField(
      controller: _email,
      textInputAction: TextInputAction.next,
      onChanged: (value) {
        _changeSubmitColor();
      },
      validator: (value) {
        _changeSubmitColor();
        if (value.isEmpty) {
          return "Invalid Email";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'email',
        labelStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
