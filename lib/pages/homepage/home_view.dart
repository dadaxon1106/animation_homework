import 'package:animation_homework/pages/secondpage/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final AnimationController controller;
  late final AnimationController controller2;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2100),
    );
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SlideTransition(
                position: Tween(
                  begin: const Offset(2, -2),
                  end: const Offset(0, 0),
                ).animate(controller),
                child: Image.asset(
                  "assets/images/photo.png",
                  height: 240,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: SlideTransition(
                  position: Tween(
                    begin: const Offset(-2, -2),
                    end: const Offset(0, 0),
                  ).animate(controller),
                  child: const Text(
                    "The first bank",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SlideTransition(
                position: Tween(
                  begin: const Offset(-2, -2),
                  end: const Offset(0, 0),
                ).animate(controller),
                child: const Text(
                  "without a bank",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SlideTransition(
                  position: Tween(
                    begin: const Offset(-2, -2),
                    end: const Offset(0, 0),
                  ).animate(controller),
                  child: const Text(
                    "join the nobank experience",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 23,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SlideTransition(
                position: Tween(
                  begin: const Offset(8, -2),
                  end: const Offset(0, 0),
                ).animate(controller),
                child: const Text(
                  "entirely online, no jokes",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 23,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: SlideTransition(
                  position: Tween(
                    begin: const Offset(8, -8),
                    end: const Offset(0, 0),
                  ).animate(controller),
                  child: GestureDetector(
                    onTap: () async {
                      if (!controller.isDismissed) {
                        await controller.reverse();
                        // ignore: use_build_context_synchronously
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const SecondPage();
                            },
                          ),
                        );
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black54,
                              offset: Offset(0, 2),
                              blurRadius: 10)
                        ],
                      ),
                      child: const Text(
                        "Enter",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
