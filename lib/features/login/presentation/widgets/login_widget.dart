import 'package:algoriza_task1/core/util/widgets/default_form_field.dart';
import 'package:algoriza_task1/core/util/widgets/my_asset_image.dart';
import 'package:algoriza_task1/core/util/widgets/my_button.dart';
import 'package:algoriza_task1/core/util/widgets/navigate.dart';
import 'package:algoriza_task1/core/util/widgets/boarder_google_widget.dart';
import 'package:algoriza_task1/core/util/widgets/my_divider_login_register.dart';
import 'package:algoriza_task1/features/register/presentation/pages/register_screen.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {

   var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             MyAssetImage(
                image: 'login',
                height: 200.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to Fashion Daily',
                      style: TextStyle(
                        color: Colors.teal[300],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Row(
                            children:
                            [
                              Text(
                                'Help',
                                style: TextStyle(
                                  color: Colors.blue[300],
                                  fontSize: 15.0,
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Icon(Icons.help),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Text(
                      'Phone Number',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black45,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    DefaultFormField(
                      isPassword: true,
                      controller: phoneController,
                      type: TextInputType.phone,
                      validate: 'Phone number is not registered',
                      hintText: 'Eg .0105999455',
                      radius: 6.0,
                      prefixIcon: CountryCodePicker(
                        onChanged: (CountryCode countryCode) {},
                        initialSelection: 'EG',
                        favorite: const ['+20', 'EG'],
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    MyButton(
                      text: 'Sign in',
                      onClick: () {
                        if (formKey.currentState!.validate()) {
                          phoneController.text;
                        }
                      },
                      height: 55.0,
                      background: Colors.blue,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const MyDividerWidget(),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const BoarderGoogleWidget(),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't has any account?",
                          style: TextStyle(
                            color: Color(0xFF868490),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            navigateTo(
                              context,
                               RegisterScreen(),
                            );
                          },
                          child: const Text('Register here'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Use the application according to policy rules.Any kinds of violation will be subject to sanction.',
                      style: TextStyle(
                        color: Color(0xFFcfcfd2),
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// TextFormField(
//   controller: phoneController,
//   validator: (value) {
//     if (value!.isEmpty) {
//       return 'Phone number is not registered';
//     }
//     return null;
//   },
//   keyboardType: TextInputType.phone,
//   decoration: InputDecoration(
//     prefixIcon: CountryCodePicker(
//       onChanged: (CountryCode countryCode) {},
//       initialSelection: 'EG',
//       favorite: const ['+20', 'EG'],
//       showCountryOnly: false,
//       showOnlyCountryWhenClosed: false,
//       alignLeft: false,
//     ),
//     hintText: '1099988681',
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(6),
//     ),
//   ),
// ),