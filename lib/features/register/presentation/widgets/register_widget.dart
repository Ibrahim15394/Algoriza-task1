import 'package:algoriza_task1/core/util/widgets/boarder_google_widget.dart';
import 'package:algoriza_task1/core/util/widgets/default_form_field.dart';
import 'package:algoriza_task1/core/util/widgets/my_asset_image.dart';
import 'package:algoriza_task1/core/util/widgets/my_button.dart';
import 'package:algoriza_task1/core/util/widgets/my_divider_login_register.dart';
import 'package:algoriza_task1/core/util/widgets/navigate.dart';
import 'package:algoriza_task1/features/login/presentation/pages/login_screen.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class RegisterWidget extends StatelessWidget {

  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

   RegisterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              MyAssetImage(
                image: 'login',
                height: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 18.0,
                  child: IconButton(
                      onPressed: () {
                        navigateTo(context, const LoginScreen());
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to Fashion Daily',
                    style: TextStyle(
                      color: Colors.teal[300],
                      fontSize: 15.0,
                    ),
                  ),
                  const SizedBox(
                    height:20.0,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Register',
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
                    'Email',
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
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validate: 'must be enter your email address',
                    hintText: 'email@gmail.com',
                    isPassword: false,
                    radius: 6.0,
                  ),
                  const SizedBox(
                    height: 15.0,
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
                    controller: phoneController,
                    type: TextInputType.phone,
                    validate: 'Phone number is not registered',
                    hintText: '111149655',
                    isPassword: false,
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
                    height: 15.0,
                  ),
                  const Text(
                    'Password',
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
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    validate: 'must be enter password',
                    textLabel: 'password',
                    isPassword: true,
                    hintText: 'password',
                    radius: 6.0,
                    suffixIcon: const Icon(Icons.visibility,color: Colors.black,),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  MyButton(
                    text: 'Register',
                    onClick: () {
                      if (formKey.currentState!.validate()) {
                        print('gig');
                        emailController.text;
                        phoneController.text;
                        passwordController.text;
                      }
                    },
                    height: 50.0,
                    background: Colors.blue,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const MyDividerLoginAndRegister(),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const BoarderGoogleWidget(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "has any account?",
                      ),
                      TextButton(
                        onPressed: () {
                          navigateTo(
                            context,
                            const LoginScreen(),
                          );
                        },
                        child: const Text('Sign in here'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'By ergister your account,you are agree to our',
                      style: TextStyle(
                        color: Colors.teal[200],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'terms and condition',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
