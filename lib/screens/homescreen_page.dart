import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentkar_project/widget/desktopbody.dart';
import 'package:rentkar_project/widget/draggablefloatingaction_button.dart';
import 'package:rentkar_project/widget/mobile_body.dart';
import 'package:rentkar_project/widget/responsive.dart';

import '../widget/outlinedbutton.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  final  search =TextEditingController();
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff1BACF4), Color(0xff19EEB5)],
  ).createShader(Rect.fromLTWH(27, 172, 244, 1));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
          mobile: MyMobileBody(),
          desktop: MyDesktopBody()),
    );
  }
}
