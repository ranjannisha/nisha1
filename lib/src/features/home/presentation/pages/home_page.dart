import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nisha1/l10n/l10n.dart';
import 'package:nisha1/src/core/extensions/text_style_extensions.dart';
import 'package:nisha1/src/core/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:nisha1/src/core/themes/app_styles.dart';
import 'package:nisha1/src/features/home/data/models/box_model.dart';
import 'package:nisha1/src/features/home/presentation/bloc/home_cubit.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.interactiveBoxLayout,
          style: AppStyles.text12PxRegular.blackColor,
        ),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Column(
            children: [
              TextField(
                controller: controller,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                onSubmitted: (value) {
                  context.read<HomeCubit>().validateAndLoadBoxes(value);
                },
                decoration: InputDecoration(
                  labelText: l10n.enterNumber,
                  errorText: state.errorMessage,
                  border: const OutlineInputBorder(),
                ),
              ),
              16.verticalSpace,
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      child: _buildCShape(
                        state.boxes,
                        context,
                        constraints.maxWidth,
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ).padAll(16.w),
    );
  }

  Widget _buildCShape(
    List<BoxModel> boxes,
    BuildContext context,
    double maxWidth,
  ) {
    final l10n = context.l10n;
    if (boxes.isEmpty) return  Center(child: Text(l10n.noBoxes));

    final int n = boxes.length;
    final int topRowLength = (n / 3).ceil();
    final int sideColumnLength = n - (2 * topRowLength);

    final topRowBoxes = boxes.take(topRowLength).toList();
    final sideColumnBoxes =
        boxes.skip(topRowLength).take(sideColumnLength).toList();
    final bottomRowBoxes = boxes.skip(topRowLength + sideColumnLength).toList();

    const double spacing = 4;
    final double boxSize = ((maxWidth - spacing * (topRowLength - 1)) /
            topRowLength)
        .clamp(20.0, 70.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children:
                topRowBoxes
                    .map(
                      (b) => Padding(
                        padding: const EdgeInsets.only(right: spacing),
                        child: _box(context, b, boxSize),
                      ),
                    )
                    .toList(),
          ),
        ),
        spacing.verticalSpace,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children:
                  sideColumnBoxes
                      .map(
                        (b) => Padding(
                          padding: const EdgeInsets.only(bottom: spacing),
                          child: _box(context, b, boxSize),
                        ),
                      )
                      .toList(),
            ),
            SizedBox(
              width:
                  boxSize * (topRowLength - 1) + spacing * (topRowLength - 1),
            ),
          ],
        ),
        spacing.verticalSpace,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children:
                bottomRowBoxes
                    .map(
                      (b) => Padding(
                        padding: const EdgeInsets.only(right: spacing),
                        child: _box(context, b, boxSize),
                      ),
                    )
                    .toList(),
          ),
        ),
      ],
    );
  }

  Widget _box(BuildContext context, BoxModel box, double size) {
    return GestureDetector(
      onTap: () => context.read<HomeCubit>().toggleBox(box.id),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: box.isActive ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(4.r),
        ),
      ),
    );
  }
}
