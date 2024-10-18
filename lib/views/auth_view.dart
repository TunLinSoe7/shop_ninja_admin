import 'package:flutter/material.dart';
import 'package:shop_hub_admin/pages/mobile/mobile_auth_page.dart';
import 'package:shop_hub_admin/pages/web/web_auth_page.dart';
import 'package:shop_hub_admin/widgets/responsive_widget.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
        mobile: MobileAuthPage(),
        web: WebAuthPage()
    );
  }
}
