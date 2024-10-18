import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key, required this.mobile, required this.web});
  final Widget mobile;
  final Widget web;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_,constraints){
      if(constraints.maxWidth < 600){
        return mobile;
      }else{
        return web;
      }
    });
  }
}
