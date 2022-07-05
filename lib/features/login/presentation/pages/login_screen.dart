import 'package:algoriza_task1/features/register/presentation/pages/register_screen.dart';
import 'package:algoriza_task1/shared/components/components.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage('assets/images/login.png'),
                width: double.infinity,
                height: 250.0,
                fit: BoxFit.cover,
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
                    // DefaultFormField(
                    //   onTap: () {
                    //   },
                    //   controller: phoneController,
                    //   type: TextInputType.phone,
                    //   validate: 'Phone number is not registered',
                    //   textLabel: 'Eg .0105999455',
                    // ),
                    TextFormField(
                      controller: phoneController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Phone number is not registered';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixIcon: CountryCodePicker(
                          onChanged: (CountryCode countryCode) {},
                          initialSelection: 'EG',
                          favorite: const ['+20', 'EG'],
                          showCountryOnly: false,
                          showOnlyCountryWhenClosed: false,
                          alignLeft: false,
                        ),
                        hintText: '1099988681',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
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
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1.0,
                            color: Colors.teal[100],
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        const Text(
                          'Or',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Container(
                            height: 1.0,
                            color: Colors.teal[100],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: const Color(0xFFb9c9d5)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 20.0,
                            child: const Image(
                              image: AssetImage('assets/images/google.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Sign with by google',
                            style: TextStyle(
                              color: Colors.blue[300],
                            ),
                          ),
                        ],
                      ),
                    ),
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
                              const RegisterScreen(),
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
