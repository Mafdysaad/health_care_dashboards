import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/images.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/drawer/widget/builditem.dart';

class Custom_drawer extends StatefulWidget {
  Custom_drawer({super.key});
  int Currnet_item = 1;

  @override
  State<Custom_drawer> createState() => _Custom_drawerState();
}

class _Custom_drawerState extends State<Custom_drawer> {
  @override
  Widget build(BuildContext context) {
    List<String> Icons = [
      Assets.assetsImagesStandardCollection,
      Assets.assetsImagesFrame,
      Assets.assetsImagesCalendar,
      Assets.assetsImagesChate,
      Assets.assetsImagesChart,
      Assets.assetsImagesSetting,
      Assets.assetsImagesLogout
    ];

    return Container(
      height: double.infinity,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFE7E6E6)),
            borderRadius: BorderRadius.circular(12)),
        shadows: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 50,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(Icons.length, (index) {
            return GestureDetector(
              onTap: () {
                if (widget.Currnet_item != index) {
                  widget.Currnet_item = index;
                  setState(() {});
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 30, right: 20, left: 21),
                child: Builditems(
                  Icon: Icons[index],
                  isActive: widget.Currnet_item == index,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
