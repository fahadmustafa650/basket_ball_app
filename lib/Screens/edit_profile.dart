import 'package:basket_ball/widgets/background_image.dart';
import 'package:basket_ball/widgets/custom_dropdown.dart';
import 'package:basket_ball/widgets/profile_picture.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              BackgroundImage(),
              EditProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class EditProfileForm extends StatelessWidget {
  final _lastNameFocusNode = FocusNode();
  final _ageFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  //Variables for TextFields for backend usage
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _age = TextEditingController();

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
          SizedBox(
            height: 10,
          ),
          ProfilePictureWidget(),
          firstNameTextField(context),
          lastNameTextField(context),
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
          submitButton(context)
        ],
      ),
    );
  }

  Widget firstNameTextField(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller: _firstName,
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
          focusColor: Colors.green,
        ),
      ),
    );
  }

  Widget lastNameTextField(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller: _lastName,
        validator: (value) {
          if (value.isEmpty) {
            return "Please Enter Last Name";
          }
          return null;
        },
        onFieldSubmitted: (_) {
          FocusScope.of(context).requestFocus(_ageFocusNode);
        },
        textInputAction: TextInputAction.next,
        focusNode: _lastNameFocusNode,
        decoration: InputDecoration(
          labelText: "last name",
          focusColor: Colors.green,
        ),
      ),
    );
  }

  Widget ageTextField(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.40,
      child: TextFormField(
        controller: _age,
        focusNode: _ageFocusNode,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value.isEmpty) {
            return "Please Enter age";
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: "age",
        ),
      ),
    );
  }

  Widget submitButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //On Pressing Submit Button
        submitForm();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.purple,
        ),
        margin: EdgeInsets.symmetric(vertical: 65),
        width: MediaQuery.of(context).size.width * 0.85,
        height: 50.0,
        child: Center(
            child: Text(
          "submit",
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
