import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget _logoImage() {
  const String logoPath = 'assets/images/appBar_logo.svg';
  return SvgPicture.asset(logoPath);
}

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff242424),
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Center(
          child: _logoImage(),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
