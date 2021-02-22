import 'package:basket_ball/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
            color: Colors.blueAccent.withOpacity(1),
            image: DecorationImage(
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.4), BlendMode.dstATop),
                image: AssetImage('assets/images/basket_ball123.png'))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SignUpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  //FOCUS NODES
  final _lastNameFocusNode = FocusNode();
  final _nickNameFocusNode = FocusNode();
  final _ageFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _passowrdFocusNode = FocusNode();
  // TEXTFIELDS CONTROLLERS
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _nickNameController = TextEditingController();
  final _ageController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  //FORM KEY
  final _formKey = GlobalKey<FormState>();

  void submitForm() {
    final isValid = _formKey.currentState.validate();
    if (isValid) {
      //TODO: Enter Backend code to submit form

    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/logo_basket_ball.png'),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Reset Password',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              firstNameTextField(context),
              lastNameTextField(context),
            ],
          ),
          _nickNameTextField(context),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                ageTextField(context),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: CustomDropDown())
              ],
            ),
          ),
          _emailTextField(context),
          _passwordTextField(context),
          Row(children: [
            Checkbox(value: true, onChanged: null),
            Text(
              "I agree to Ballnow's privacy policy",
              style: TextStyle(color: Colors.black),
            )
          ]),
          _submitButton(context)
        ],
      ),
    );
  }

  Widget firstNameTextField(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width * 0.40,
      child: TextFormField(
        controller: _firstNameController,
        textInputAction: TextInputAction.next,
        validator: (value) {
          if (value.isEmpty) {
            return "Please Enter a valid name";
          }
          return null;
        },
        onFieldSubmitted: (_) {
          FocusScope.of(context).requestFocus(_lastNameFocusNode);
        },
        decoration: InputDecoration(
          labelText: "first name",
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          focusColor: Colors.green,
        ),
      ),
    );
  }

  Widget lastNameTextField(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width * 0.40,
      child: TextFormField(
        controller: _lastNameController,
        validator: (value) {
          if (value.isEmpty) {
            return "Please Enter Last Name";
          }
          return null;
        },
        onFieldSubmitted: (_) {
          FocusScope.of(context).requestFocus(_nickNameFocusNode);
        },
        textInputAction: TextInputAction.next,
        focusNode: _lastNameFocusNode,
        decoration: InputDecoration(
          labelText: "last name",
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          focusColor: Colors.green,
        ),
      ),
    );
  }

  Widget _nickNameTextField(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      width: MediaQuery.of(context).size.width * 0.90,
      child: TextFormField(
        controller: _nickNameController,
        textInputAction: TextInputAction.next,
        validator: (value) {
          if (value.isEmpty) {
            return "Please Enter a valid name";
          }
          return null;
        },
        onFieldSubmitted: (_) {
          FocusScope.of(context).requestFocus(_ageFocusNode);
        },
        decoration: InputDecoration(
          labelText: "nickname",
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          focusColor: Colors.green,
        ),
      ),
    );
  }

  Widget ageTextField(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.40,
      child: TextFormField(
        controller: _ageController,
        focusNode: _ageFocusNode,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value.isEmpty) return "Please Enter age";
          return null;
        },
        onFieldSubmitted: (_) {
          FocusScope.of(context).requestFocus(_emailFocusNode);
        },
        decoration: InputDecoration(
          labelText: "age",
          labelStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _emailTextField(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      width: MediaQuery.of(context).size.width * 0.90,
      child: TextFormField(
        controller: _emailController,
        textInputAction: TextInputAction.next,
        validator: (value) {
          if (value.isEmpty) {
            return "Please Enter a valid name";
          }
          return null;
        },
        onFieldSubmitted: (_) {
          FocusScope.of(context).requestFocus(_passowrdFocusNode);
        },
        decoration: InputDecoration(
          labelText: "email",
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          focusColor: Colors.green,
        ),
      ),
    );
  }

  Widget _passwordTextField(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      width: MediaQuery.of(context).size.width * 0.90,
      child: TextFormField(
        controller: _passwordController,
        textInputAction: TextInputAction.next,
        validator: (value) {
          if (value.isEmpty) {
            return "Please Enter a valid name";
          }
          return null;
        },
        onFieldSubmitted: (_) {
          FocusScope.of(context).requestFocus(_passowrdFocusNode);
        },
        obscureText: true,
        decoration: InputDecoration(
          labelText: "password",
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          focusColor: Colors.green,
        ),
      ),
    );
  }

  Widget _submitButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //On Pressing Submit Button
        submitForm();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black,
        ),
        margin: EdgeInsets.symmetric(vertical: 20),
        width: MediaQuery.of(context).size.width * 0.85,
        height: 50.0,
        child: Center(
            child: Text(
          "sign up",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
