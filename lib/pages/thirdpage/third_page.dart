import 'package:animation_homework/pages/homepage/home_view.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> with TickerProviderStateMixin {
  late final AnimationController controller;
  late final AnimationController controller2;
  late final AnimationController controller3;
  late final Animation<double> _animation;
  late final Animation<double> _animation2;
  late final Animation<double> _animation3;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    controller2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    controller3 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(controller);
    _animation2 = Tween(begin: 0.0, end: 1.0).animate(controller2);
    _animation3 = Tween(begin: 0.0, end: 1.0).animate(controller3);
    controller.forward();
    controller2.forward();
    controller3.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScaleTransition(
                scale: _animation2,
                alignment: Alignment.topLeft,
                child: FadeTransition(
                  opacity: _animation2,
                  child: Text(
                    "NOBANK",
                    style: TextStyle(
                      color: Colors.blue.shade600,
                      letterSpacing: 4,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              ScaleTransition(
                scale: _animation,
                child: FadeTransition(
                  opacity: _animation,
                  child: Image.asset("assets/images/photo_second.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1),
                child: ScaleTransition(
                  scale: _animation3,
                  child: FadeTransition(
                    opacity: _animation3,
                    child: const Text(
                      "You did it\n you're in.",
                      style: TextStyle(
                        fontSize: 40,
                        // letterSpacing: 2,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              ScaleTransition(
                scale: _animation3,
                alignment: Alignment.bottomCenter,
                child: FadeTransition(
                  opacity: _animation2,
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 40),
                    child: Text(
                      "welcome Lorenzo now\n you are a nabanker",
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SlideTransition(
                position: Tween(begin: Offset(-1, -1), end: Offset(0, 0))
                    .animate(controller2),
                child: ScaleTransition(
                  scale: _animation2,
                  child: FadeTransition(
                    opacity: _animation2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () async {
                          if (controller.isCompleted &&
                              controller2.isCompleted &&
                              controller3.isCompleted) {
                            await controller.reverse();
                            await controller2.reverse();
                            await controller3.reverse();
                            // ignore: use_build_context_synchronously
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const HomePage();
                                },
                              ),
                            );
                          } else {}
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
