import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;
  final bool isDark;

  const CustomBottomNav({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
    this.isDark = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bgColor = isDark ? const Color(0xFF23282E) : Colors.white;
    final iconColor = isDark ? Colors.white : Colors.black87;
    final selectedBg = isDark
        ? Colors.white.withOpacity(0.12)
        : Colors.black.withOpacity(0.08);
    final selectedIconColor = isDark ? Colors.white : Colors.black;
    final labelColor = isDark ? Colors.white : Colors.black87;

    return Container(
      color: bgColor,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(
            icon: Icons.home_outlined,
            label: 'Home',
            selected: selectedIndex == 0,
            onTap: () => onTap(0),
            selectedBg: selectedBg,
            iconColor: iconColor,
            selectedIconColor: selectedIconColor,
            labelColor: labelColor,
          ),
          _NavItem(
            icon: Icons.storefront_outlined,
            label: 'Store',
            selected: selectedIndex == 1,
            onTap: () => onTap(1),
            selectedBg: selectedBg,
            iconColor: iconColor,
            selectedIconColor: selectedIconColor,
            labelColor: labelColor,
          ),
          _NavItem(
            icon: Icons.favorite_border,
            label: 'Wishlist',
            selected: selectedIndex == 2,
            onTap: () => onTap(2),
            selectedBg: selectedBg,
            iconColor: iconColor,
            selectedIconColor: selectedIconColor,
            labelColor: labelColor,
          ),
          _NavItem(
            icon: Icons.person_outline,
            label: 'Profile',
            selected: selectedIndex == 3,
            onTap: () => onTap(3),
            selectedBg: selectedBg,
            iconColor: iconColor,
            selectedIconColor: selectedIconColor,
            labelColor: labelColor,
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;
  final Color selectedBg;
  final Color iconColor;
  final Color selectedIconColor;
  final Color labelColor;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
    required this.selectedBg,
    required this.iconColor,
    required this.selectedIconColor,
    required this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
              decoration: BoxDecoration(
                color: selected ? selectedBg : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                icon,
                color: selected ? selectedIconColor : iconColor,
                size: 32,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: labelColor,
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
