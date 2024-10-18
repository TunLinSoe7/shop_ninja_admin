import 'package:flutter/material.dart';

import '../utils/constants/color.dart';

class SideBarMenuWidget extends StatelessWidget {
  const SideBarMenuWidget({
    super.key, required this.title, this.onTap, required this.icon,this.isSelected = false,
  });
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color: isSelected?Theme.of(context).colorScheme.onSurface:Colors.grey),
      title: Text(title,style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: isSelected?Theme.of(context).colorScheme.onSurface:Colors.grey
      ),),
      selected: isSelected,
      selectedTileColor:kPrimaryColor,
      selectedColor:Colors.white ,
      onTap: onTap,
    );
  }
}
