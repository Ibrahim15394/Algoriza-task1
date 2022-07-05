import 'package:algoriza_task1/features/login/presentation/pages/login_screen.dart';
import 'package:algoriza_task1/shared/components/components.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Form(
        child: Column(
          key: formKey,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Stack(
              alignment: AlignmentDirectional.centerStart,
              children:  [
                Container(
                  height: 130.0,
                  width: double.infinity,
                  child: const Image(
                    image: AssetImage('assets/images/login.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),

                   child: CircleAvatar(
                     backgroundColor: Colors.black,
                     radius: 18.0,
                     child: IconButton(
                         onPressed: ()
                         {
                           navigateTo(context, const LoginScreen());
                         },
                         icon:const Icon(Icons.arrow_back_ios)
                     ),
                   ),
                 ),
              ],
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
                    height: 15.0,
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
                    height: 15.0,
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
                    onTap: (){},
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validate: 'must be enter your email address',
                    textLabel: 'Eg . example@gmail.com',
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
                    onTap: () {
                    },
                    controller: phoneController,
                    type: TextInputType.phone,
                    validate: 'Phone number is not registered',
                    textLabel: 'Eg .0105999455',
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
                    onTap: () {
                    },
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    validate: 'must be enter password',
                    textLabel: 'password',
                    suffix: Icons.visibility,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  MyButton(
                    text: 'Register',
                    onClick: ()
                    {
                      if(formKey.currentState!.validate())
                      {
                        print('gig');
                         emailController.text;
                         phoneController.text;
                         passwordController.text;
                      }
                    },
                    height: 50.0,
                    background:Colors.blue ,
                  ),
                  const SizedBox(
                    height: 15.0,
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
                    height: 15.0,
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
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Text(
                        'has any account?',
                      ),
                      TextButton(
                        onPressed: ()
                        {
                          navigateTo(context, const LoginScreen(),);
                        },
                        child: const Text('Sign in here'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'By ergister your account,you are agree to our',
                        style: TextStyle(
                          color: Colors.teal[200],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                            'terms and condition',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
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
