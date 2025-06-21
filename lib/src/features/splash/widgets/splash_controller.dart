import 'package:flutter/material.dart';

class SplashController extends ChangeNotifier {
  late AnimationController animationController;
  late Animation<double> bounceAnimation;
  late Animation<double> fadeAnimation;

  void initializeAnimations(TickerProvider vsync) {
    animationController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 2000),
    );

    // Bounce animation that goes up then down
    bounceAnimation = TweenSequence([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 0,
          end: -20,
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 40.0,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: -20,
          end: 0,
        ).chain(CurveTween(curve: Curves.bounceOut)),
        weight: 60.0,
      ),
    ]).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.0, 0.8),
      ),
    );

    // Fade animation
    fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.0, 0.4),
      ),
    );
  }

  void startAnimation() {
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}