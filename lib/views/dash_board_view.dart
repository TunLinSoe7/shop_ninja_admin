import 'package:flutter/material.dart';
import 'package:shop_hub_admin/pages/mobile/mobile_dash_board_page.dart';
import 'package:shop_hub_admin/pages/web/web_dash_board_page.dart';
import 'package:shop_hub_admin/widgets/responsive_widget.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(mobile: MobileDashBoardPage(), web: WebDashBoardPage());
  }
}
