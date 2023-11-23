import 'package:animation_homework/pages/thirdpage/third_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> with TickerProviderStateMixin {
  late final AnimationController controller;

  late final Animation<double> _animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(controller);

    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 239),
      body: Padding(
        padding: const EdgeInsets.only(top: 45, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScaleTransition(
                  scale: _animation,
                  child: const Text(
                    "Choose",
                    style: TextStyle(fontSize: 35),
                  ),
                ),
                ScaleTransition(
                  scale: _animation,
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    "your plan",
                    style: TextStyle(fontSize: 35),
                  ),
                ),
                ScaleTransition(
                  scale: _animation,
                  alignment: Alignment.topLeft,
                  child: Text(
                    "you can always start with",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
                ScaleTransition(
                  scale: _animation,
                  alignment: Alignment.topRight,
                  child: Text(
                    "a free plan and then upgrade",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
              ],
            ),
            ScaleTransition(
              scale: _animation,
              alignment: Alignment.center,
              child: Container(
                height: 220,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0, -4),
                      blurRadius: 18,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ScaleTransition(
                          scale: _animation,
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "noblack",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ScaleTransition(
                          scale: _animation,
                          alignment: Alignment.bottomLeft,
                          child: const Text(
                            "4,99 Э monthly",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ScaleTransition(
                      scale: _animation,
                      alignment: Alignment.topRight,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Unlimitied cards and spaces, investments tips and much more",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "read all the features",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    ScaleTransition(
                      scale: _animation,
                      child: TextButton(
                        onPressed: () async {
                          if (controller.isCompleted) {
                            await controller.reverse();
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ThirdPage();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          "I want this",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ScaleTransition(
              scale: _animation,
              alignment: Alignment.center,
              child: Container(
                height: 220,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0, -4),
                      blurRadius: 18,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ScaleTransition(
                          scale: _animation,
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "nowhite",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ScaleTransition(
                          scale: _animation,
                          alignment: Alignment.bottomLeft,
                          child: const Text(
                            "2,99 Э monthly",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ScaleTransition(
                      scale: _animation,
                      alignment: Alignment.topRight,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Two cards, one space\n and billing repository",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "read all the features",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    ScaleTransition(
                      scale: _animation,
                      child: const Text(
                        "I want this",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
