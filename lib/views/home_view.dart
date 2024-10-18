import 'package:flutter/material.dart';
import 'package:shop_hub_admin/pages/mobile/mobile_home_page.dart';
import 'package:shop_hub_admin/pages/web/web_home_page.dart';
import 'package:shop_hub_admin/widgets/responsive_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
        mobile: MobileHomePage(),
        web: WebHomePage()
    );
  }
}
