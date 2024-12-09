import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/adaptive_layout/adaptive_layout.dart';
import 'package:healthcare_dashborad/utils/size_config.dart';
import 'package:healthcare_dashborad/widgets/desktop/desktop_latyout.dart';
import 'package:healthcare_dashborad/widgets/desktop/mobile_layout.dart';
import 'package:healthcare_dashborad/widgets/desktop/tablet_layout.dart';
import 'package:healthcare_dashborad/widgets/desktop/widget/drawer/drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? Custom_drawer()
            : null,
        appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? AppBar(
                elevation: 0,
                backgroundColor: const Color(0xFFFAFAFA),
                leading: IconButton(
                    onPressed: () {
                      print(MediaQuery.sizeOf(context).width);
                      scaffoldkey.currentState!.openDrawer();
                    },
                    icon: const Icon(Icons.menu)),
              )
            : null,
        body: AdabtiveLayout(
          MobileLayout: (context) => const MobileLayout(),
          TablietLayout: (context) => const TabletLayout(),
          DesktopLayout: (context) => const DesktopLatyout(),
        ));
  }
}
