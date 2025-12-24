import 'package:flutter/material.dart';

class Day4 extends StatelessWidget {
  const Day4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const NavBar(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white,
                    Colors.grey.shade50,
                  ],
                ),
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 2,
                ),
              ),
              child: const Center(
                child: Text('Page Content'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  String activeItem = 'Services';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFE8F4FB), // pale blue bar
        border: Border(
          bottom: BorderSide(color: Colors.blueGrey.shade50, width: 1.5),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Left: compact Google-like logo
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade200, width: 1.2),
            ),
            child: const Center(
              child: Text(
                'G',
                style: TextStyle(
                  color: Color(0xFF4285F4),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Spacer then centered nav items
          const SizedBox(width: 24),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavItem(
                  label: 'Home',
                  isActive: activeItem == 'Home',
                  onTap: () => setState(() => activeItem = 'Home'),
                ),
                const SizedBox(width: 28),
                NavItem(
                  label: 'About',
                  isActive: activeItem == 'About',
                  onTap: () => setState(() => activeItem = 'About'),
                ),
                const SizedBox(width: 28),
                NavItem(
                  label: 'Services',
                  isActive: activeItem == 'Services',
                  onTap: () => setState(() => activeItem = 'Services'),
                ),
                const SizedBox(width: 28),
                NavItem(
                  label: 'Blog',
                  isActive: activeItem == 'Blog',
                  onTap: () => setState(() => activeItem = 'Blog'),
                ),
                const SizedBox(width: 28),
                NavItem(
                  label: 'Contact',
                  isActive: activeItem == 'Contact',
                  onTap: () => setState(() => activeItem = 'Contact'),
                ),
              ],
            ),
          ),

          // Right: Get Started
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF4A90E2),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF4A90E2).withOpacity(0.25),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Row(
                    children: const [
                      Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 14,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatefulWidget {
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: TextStyle(
                color: widget.isActive
                    ? const Color(0xFF667EEA)
                    : isHovered
                        ? const Color(0xFF667EEA)
                        : Colors.black54,
                fontSize: 15,
                fontWeight: widget.isActive
                    ? FontWeight.w700
                    : isHovered
                        ? FontWeight.w600
                        : FontWeight.w500,
                letterSpacing: 0.3,
              ),
              child: Text(widget.label),
            ),
            if (widget.isActive) ...[
              const SizedBox(height: 6),
              Container(
                height: 3,
                width: 28,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ] else if (isHovered) ...[
              const SizedBox(height: 6),
              Container(
                height: 2,
                width: 20,
                decoration: BoxDecoration(
                  color: const Color(0xFF667EEA).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}