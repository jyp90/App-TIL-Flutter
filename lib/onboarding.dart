import 'package:flutter/material.dart';
import 'main.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'On boarding 1 Page !',
          body: 'This is the first page ',
          image: Image.asset('images/onboarding-1.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'On boarding 2 Page!',
          body: 'This is the second page ',
          image: Image.asset('images/onboarding-2.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'On boarding 3 Page!',
          body: 'This is the third page ',
          image: Image.asset('images/onboarding-3.png'),
          decoration: getPageDecoration(),
        )
      ],
      done: const Text('Done!'),
      onDone: () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => MyPage())); // 메인 화면에서 뒤로가기 버튼을 사라지게함
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
          color: Colors.cyan,
          size: const Size(10, 10),
          activeSize: const Size(22, 10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
      curve: Curves.bounceOut,
    );
  }
}

PageDecoration getPageDecoration() {
  return const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.pink,
      ),
      imagePadding: EdgeInsets.only(top: 40),
      pageColor: Colors.blueGrey);
}
