import 'package:algoriza_task1/modules/login/login_screen.dart';
import 'package:algoriza_task1/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

//للاسف معرفتيش استخدم media query
// استخدمت  country picker لكن معرفتيش اظهرها في TextFormField
// معرفتيش ان الصورة تاخد  statusBar

class BoardingModel
{
  String? image;
  String? title;
  String? body;

  BoardingModel({
    this.image,
    this.title,
    this.body,
  });
}

class OnBoardingScreen extends StatefulWidget {

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}
class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();
  bool isLast = false;
  List<BoardingModel> boarding =
  [
    BoardingModel(
     image:'assets/images/on boarding1.png',
      title: 'Get food delivery to your doorstep asap',
      body: 'We have young and professional delivery team that will bring you food as soon as possible to your doorstep',
    ),
    BoardingModel(
      image:'assets/images/on boarding3.png',
      title: 'Buy any Food from your favorite restaurant',
      body: 'We are constantly adding your favorite restaurant throughout the territory and around your area carefully selected',
    ),
    BoardingModel(
      image:'assets/images/on boarding2.png',
      title: 'Get food delivery to your doorstep asap',
      body: 'We have young and professional delivery team that will bring you food as soon as possible to your doorstep',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration:  BoxDecoration(
               borderRadius: BorderRadius.circular(20.0),
                color: Colors.greenAccent[100],
              ),
              child: TextButton(
                  onPressed: ()
                  {
                    navigateAndFinish(context, LoginScreen());
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0.0,right: 30.0,bottom: 20.0,left: 30.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              RichText(
                  text:  TextSpan(
                    children:
                    [
                      const TextSpan(text: '7',
                        style: TextStyle(
                          color: Color(0xFFFF6464),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: 'Krave',
                        style: TextStyle(
                          color: Colors.cyan[800],
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ],
                  ),
              ),
              Expanded(
                flex: 1,
                child: PageView.builder(
                  onPageChanged: (int index)
                  {
                    if( index == boarding.length -1)
                      {
                        print(isLast);
                        setState(() {
                          isLast = true;
                        });
                      }else
                        {
                          setState(() {
                            isLast = false;
                          });
                        }
                  },
                  itemBuilder:(context, index) => buildBoardingItem(boarding[index]),
                  controller: boardController,
                  physics: const BouncingScrollPhysics(),
                  itemCount: boarding.length,


                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SmoothPageIndicator(
                  controller: boardController,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Color(0xFFFF6464),
                    dotColor:Color(0xFFCFD8DC),
                    dotHeight:5.0 ,
                    dotWidth:8.0 ,
                    spacing:5.0 ,
                    expansionFactor:4 ,
                  ),
                  count: boarding.length
              ),
              const SizedBox(
                height: 15.0,
              ),
              MyButton(
                onClick: ()
                {
                  navigateAndFinish(context, LoginScreen());
                },
                background:const Color(0xFF4DB6AC),
                height: 50.0,
                radius: 15.0,
                text: 'Get Started',
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                  [
                  const Text(
                    'Dont have an account?',
                  ),
                   TextButton(
                       onPressed: ()
                       {
                         navigateAndFinish(context,  LoginScreen());
                       },
                     child: Text(
                     'Sign Up',
                     style: TextStyle(
                       color: Colors.teal[300],
                     ),
                   ),
                   ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildBoardingItem(BoardingModel model) =>  Column(
    children:
    [
      Image(
        image: AssetImage('${model.image}',),
        height: 300.0,
        width: double.infinity,
      ),
      const SizedBox(
        height: 20.0,
      ),
      Text(
        '${model.title}',
        style: const TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 20.0,
      ),
      Text(
        '${model.body}',
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.teal[600],
        ),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

//  class BuildBoardingItem extends StatelessWidget {
//   late BoardingModel model ;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children:
//     [
//       Image(
//         image: AssetImage('${model.image}'),
//       ),
//       const SizedBox(
//         height: 20.0,
//       ),
//       Text(
//         '${model.title}',
//         style: const TextStyle(
//           fontSize: 25.0,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       const SizedBox(
//         height: 20.0,
//       ),
//       Text(
//         '${model.body}',
//         style: TextStyle(
//           fontSize: 14.0,
//           color: Colors.teal[600],
//         ),
//       ),
//     ],
//     );
//   }
// }

