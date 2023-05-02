import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginWidget(),
    );
  }
}

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.COLUMN,
            columnMainAxisAlignment: MainAxisAlignment.start,
            columnCrossAxisAlignment: CrossAxisAlignment.center,
            children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: SizedBox(
              height: 50,
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            rowFit: FlexFit.tight,
            child: SizedBox(
              child: SvgPicture.asset(
                'assets/eye.svg',
                color: Color.fromRGBO(26, 97, 73, 100),
                fit: BoxFit.scaleDown,
              ),
            ),
          )
        ]));
  }
}
