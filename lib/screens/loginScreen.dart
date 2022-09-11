// ignore_for_file: file_names

import 'dart:io';

import 'package:blur/blur.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'myDashboardScreen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode phoneFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool loadingScreen = false;
  bool obscureText = true;

  String phoneErrorMessage = '';
  String passwordErrorMessage = '';
  String phonehHintText = '+20';
  String countryFlag = '🇪🇬';
  String phoneCode = '20';
  bool loading = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    phoneController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.fitHeight)),
          ),
          Center(
            child: SizedBox(
              height: 650,
              width: 375,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  //Phone TextField
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            controller: phoneController,
                            keyboardType: TextInputType.phone,
                            onTap: () {
                              setState(() {
                                phoneErrorMessage = '';
                              });
                            },
                            focusNode: phoneFocusNode,
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.headline2.color,
                            ),
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone,
                                  color: phoneFocusNode.hasFocus
                                      ? Theme.of(context).primaryColor
                                      : Colors.black54),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: phoneFocusNode.hasFocus
                                        ? Theme.of(context).primaryColor
                                        : Colors.black54),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(30.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: phoneFocusNode.hasFocus
                                        ? Theme.of(context).primaryColor
                                        : Colors.black54),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(30.0),
                                ),
                              ),
                              errorBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.redAccent),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30.0),
                                ),
                              ),
                              labelText: 'Phone',
                              hintText: phonehHintText,
                              errorText: phoneErrorMessage == ''
                                  ? null
                                  : phoneErrorMessage,
                              labelStyle: TextStyle(
                                color: phoneFocusNode.hasFocus
                                    ? Theme.of(context).primaryColor
                                    : Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showCountryPicker(
                              context: context,
                              //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                              exclude: <String>['IL'],
                              favorite: <String>['EG'],
                              //Optional. Shows phone code before the country name.
                              showPhoneCode: true,
                              onSelect: (Country country) {
                                setState(() {
                                  countryFlag = country.flagEmoji;
                                  phonehHintText = '+${country.phoneCode}';
                                  phoneCode = country.phoneCode;
                                });
                              },
                              // Optional. Sets the theme for the country list picker.
                              countryListTheme: CountryListThemeData(
                                inputDecoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search,
                                      color: Theme.of(context).primaryColor),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                  ),
                                  errorBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.redAccent),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                  ),
                                  labelText: 'Search',
                                  labelStyle: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Optional. Sets the border radius for the bottomsheet.
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight: Radius.circular(40.0),
                                ),
                              ),
                            );
                          },
                          child: Text(
                            countryFlag,
                            style: const TextStyle(fontSize: 22),
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //Password TextField
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                    child: TextField(
                      obscureText: obscureText,
                      controller: passwordController,
                      onTap: () {
                        setState(() {
                          passwordErrorMessage = '';
                        });
                      },
                      focusNode: passwordFocusNode,
                      style: TextStyle(
                        color: Theme.of(context).textTheme.headline2.color,
                      ),
                      cursorColor: Theme.of(context).primaryColor,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.remove_red_eye),
                          onPressed: () {
                            setState(() {
                              obscureText = obscureText;
                            });
                          },
                          color: passwordFocusNode.hasFocus
                              ? Theme.of(context).primaryColor
                              : Colors.black54,
                        ),
                        prefixIcon: Icon(Icons.lock,
                            color: passwordFocusNode.hasFocus
                                ? Theme.of(context).primaryColor
                                : Colors.black54),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: passwordFocusNode.hasFocus
                                  ? Theme.of(context).primaryColor
                                  : Colors.black54),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: passwordFocusNode.hasFocus
                                  ? Theme.of(context).primaryColor
                                  : Colors.black54),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        errorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.redAccent),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        labelText: 'Password',
                        errorText: passwordErrorMessage == ''
                            ? null
                            : passwordErrorMessage,
                        labelStyle: TextStyle(
                          color: passwordFocusNode.hasFocus
                              ? Theme.of(context).primaryColor
                              : Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                    child: TextButton(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 22, right: 22),
                    child: loading == true
                        ? Center(
                            child: LoadingAnimationWidget.fourRotatingDots(
                              color: Theme.of(context).primaryColor,
                              size: 50,
                            ),
                          )
                        : Container(
                            width: MediaQuery.of(context).size.width,
                            height: 56,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Theme.of(context).primaryColor),
                                  overlayColor: MaterialStateProperty.all(
                                      Theme.of(context)
                                          .scaffoldBackgroundColor),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ))),
                              onPressed: () async {
                                Navigator.of(context).pushReplacementNamed(
                                    MyDashboardScreen.routeName);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Text(
                                  'LOG IN',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .headline1
                                          .color,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ).frosted(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              blur: 2,
            ),
          ),
        ],
      ),
    );
  }
}
