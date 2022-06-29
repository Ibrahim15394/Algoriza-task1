import 'package:algoriza_task1/modules/register/register_screen.dart';
import 'package:algoriza_task1/shared/components/components.dart';
import 'package:country_picker/country_picker.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const Image(
                      image: AssetImage('assets/images/image login.jpg'),
                      width: double.infinity,
                      height: 200.0,
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
                            children: [
                              const Text(
                                'Sign in',
                                style: TextStyle(
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                'Help',
                                style: TextStyle(
                                  color: Colors.blue[300],
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 10.0,
                                child: Icon(
                                  Icons.question_mark_rounded,
                                  size: 15.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
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
                            onTap: () {
                              showCountryPicker(
                                context: context,
                                onSelect: (Country country) {
                                  print('Select country: ${country.displayName}');
                                },
                                exclude: ['Eg', 'Sn'],
                                favorite: ['Eg'],
                                showPhoneCode: true,
                                searchAutofocus: true,
                              );
                            },
                            controller: phoneController,
                            type: TextInputType.phone,
                            validate: 'Phone number is not registered',
                            textLabel: 'Eg .0105999455',
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          MyButton(
                              text: 'Sign in',
                              onClick: ()
                              {
                                if(formKey.currentState!.validate())
                                  {
                                    phoneController.text;
                                  }
                              },
                              height: 50.0,
                              background:Colors.blue ,
                          ),
                          const SizedBox(
                            height: 20.0,
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
                            height: 20.0,
                          ),
                          Container(
                            width: double.infinity,
                            height: 50.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.lightBlue),
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
                            height: 15.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              const Text(
                                'Doesnt has any account?',
                              ),
                              TextButton(
                                onPressed: ()
                                {
                                  navigateTo(context, RegisterScreen(),);
                                },
                                child: const Text('Register here'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                           Text(
                            'Use the application according to policy rules.Any kinds of violation will be subject to sanction.',
                            style: TextStyle(
                              color: Colors.teal[200],
                            ),
                             textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
