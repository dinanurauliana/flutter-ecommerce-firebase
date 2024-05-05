import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import 'circular_container.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: TColors.colorPrimary,
      padding: const EdgeInsets.all(0),
      child: SizedBox(
        height: 400,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(
                backgroundColor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(
                backgroundColor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
