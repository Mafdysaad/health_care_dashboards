import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/fontstyle.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/mobile/widget/container_icon.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Health Overview',
              style: Fontstyle.mulish_boled28,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'August 12, 2021',
              style: Fontstyle.mulish_semiboled16,
            )
          ],
        ),
        const Spacer(),
        const Row(
          children: [
            ContainerIcon(icon: Icons.search),
            SizedBox(
              width: 20,
            ),
            ContainerIcon(icon: Icons.notifications),
          ],
        )
      ],
    );
  }
}
