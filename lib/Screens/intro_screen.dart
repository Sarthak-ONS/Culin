import 'package:culin/Screens/home_screen.dart';
import 'package:culin/Widgets/cstm_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  static const String id = "Intro";

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage("Assets/Images/1.jpeg"), context);
    precacheImage(const AssetImage("Assets/Images/2.jpeg"), context);
    precacheImage(const AssetImage("Assets/Images/3.jpeg"), context);
    precacheImage(const AssetImage("Assets/Images/4.jpeg"), context);
    super.didChangeDependencies();
  }

  PageController? _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  _changeIndex(int index) {
    setState(() {
      position = index.toDouble();
    });
  }

  double position = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          buildPageView(),
          buildIntroButton(context),
          const CustomStackedAppBar(),
        ],
      ),
    );
  }

  Align buildIntroButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            DotsIndicator(
              dotsCount: 4,
              position: position,
              decorator: const DotsDecorator(
                spacing: EdgeInsets.all(10.0),
              ),
              onTap: (index) {
                print(index);
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, HomeScreen.id, (route) => false);
              },
              child: const Text(
                'Get Started',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xffe50914)),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: MediaQuery.of(context).size.width * 0.30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PageView buildPageView() {
    return PageView(
      controller: _pageController,
      onPageChanged: _changeIndex,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Assets/Images/4.jpeg'), fit: BoxFit.cover),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Assets/Images/2.jpeg'), fit: BoxFit.cover),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Assets/Images/3.jpeg'), fit: BoxFit.cover),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Assets/Images/1.jpeg'), fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
