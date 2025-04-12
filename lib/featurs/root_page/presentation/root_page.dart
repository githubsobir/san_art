import 'dart:developer';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/featurs/root_page/presentation/providers/provider_root_page.dart';

@RoutePage()
class RootPage extends ConsumerStatefulWidget {
  const RootPage({super.key, required this.val1, required this.val2});

  final String val1;
  final String val2;

  @override
  ConsumerState<RootPage> createState() => _RootPageState();
}

class _RootPageState extends ConsumerState<RootPage> {
  int index = 0;
  int _bottomNavIndex = 0;

  @override
  void initState() {
    log(widget.val1);
    log(widget.val2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final icons = ref.watch(getPageRoutesIcons);
    final pages = ref.watch(getPageRoutesPages);

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Container(child: pages[_bottomNavIndex]),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.black,
        splashColor: Colors.red,
        borderColor: Colors.transparent,
        icons: icons,
        // activeColor: AppColors.background,
        shadow: const Shadow(
            color: Colors.white, offset: Offset(0, 0), blurRadius: 0),
        elevation: 0,
        activeIndex: _bottomNavIndex,
        inactiveColor: Colors.grey.shade300,
        iconSize: 30,

        // leftCornerRadius: 32,
        // rightCornerRadius: 32,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) => setState(() {
          if (_bottomNavIndex != 4) {
            if (_bottomNavIndex > index) {
              // box.put("animationWindowValue", 0.7);
            } else {
              // box.put("animationWindowValue", -0.7);
            }
          } else {
            if (index > 1) {
              // box.put("animationWindowValue", 0.7);
            } else {
              // box.put("animationWindowValue", -0.7);
            }
          }
          log("index.toString()");
          log(index.toString());
          _bottomNavIndex = index;
        }),
      ),
    );
  }
}
