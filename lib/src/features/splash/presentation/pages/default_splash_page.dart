import 'package:auto_route/auto_route.dart';
import 'package:nisha1/l10n/l10n.dart';
import 'package:nisha1/src/core/themes/app_colors.dart';
import 'package:nisha1/src/core/themes/themes.dart';

import 'package:nisha1/src/features/splash/widgets/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/app_router.dart';

@RoutePage()
class DefaultSplashPage extends StatefulWidget {
  const DefaultSplashPage({super.key});

  @override
  State<DefaultSplashPage> createState() => _DefaultSplashPageState();
}

class _DefaultSplashPageState extends State<DefaultSplashPage>
    with SingleTickerProviderStateMixin {
  final SplashController _controller = SplashController();

  @override
  void initState() {
    super.initState();
    _controller.initializeAnimations(this);
    _controller.startAnimation();

    _controller.animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(milliseconds: 300), () {
          if (mounted) {
            context.router.replace( HomeRoute());
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final brightness = Theme.of(context).brightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      body: Center(
        child: AnimatedBuilder(
          animation: _controller.animationController,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, _controller.bounceAnimation.value),
              child: Opacity(
                opacity: _controller.fadeAnimation.value,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.contain,
                    ),
                    60.verticalSpace,
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
