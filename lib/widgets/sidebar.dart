import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Sidebar extends StatefulWidget {
  final String currentRoute;

  const Sidebar({super.key, required this.currentRoute});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  bool isWorkspaceExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Section
          Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    'https://up.yimg.com/ib/th?id=OIP.PTHUmH7hZRIbtxSKzTngawHaE8&pid=Api&rs=1&c=1&qlt=95&w=185&h=123',
                  ),
                ),
                const SizedBox(height: 10),
                Text('Pooja Mishra',
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                Text('Product Manager',
                    style: TextStyle(color: Colors.white60, fontSize: 12)),
              ],
            ),
          ),
          const SizedBox(height: 40),

          // Main Menu Items
          _buildNavItem(context, FontAwesomeIcons.chartPie, 'Dashboard', '/dashboard'),
          _buildNavItem(context, FontAwesomeIcons.users, 'Employees', '/employees'),
          _buildNavItem(context, FontAwesomeIcons.clock, 'Attendance', '/attendance'),
          _buildNavItem(context, FontAwesomeIcons.clipboardList, 'Summary', '/summary'),
          _buildNavItem(context, FontAwesomeIcons.circleInfo, 'Information', '/information'),

          // Workspaces with Subcategories
          _buildExpandableWorkspace(),

          const Spacer(),

          _buildNavItem(context, FontAwesomeIcons.gear, 'Settings', '/settings'),
          const Divider(color: Colors.white24),
          _buildNavItem(context, FontAwesomeIcons.arrowRightFromBracket, 'Logout', '/logout'),
        ],
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, IconData icon, String label, String route) {
    final isSelected = widget.currentRoute == route;

    return Column(
      children: [
        ListTile(
          leading: FaIcon(icon, size: 18, color: isSelected ? Colors.deepPurple : Colors.white70),
          title: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.deepPurple : Colors.white70,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          onTap: () {
            if (!isSelected) {
              Navigator.pushNamed(context, route);
            }
          },
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Divider(color: Colors.white12, height: 1, thickness: 1),
        ),
      ],
    );
  }

  Widget _buildExpandableWorkspace() {
    final isMainSelected = widget.currentRoute == '/workspaces' ||
        widget.currentRoute == '/workspaces/adstacks' ||
        widget.currentRoute == '/workspaces/finance';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: FaIcon(
            FontAwesomeIcons.layerGroup,
            size: 18,
            color: isMainSelected ? Colors.deepPurple : Colors.white70,
          ),
          title: Text(
            'Workspaces',
            style: TextStyle(
              color: isMainSelected ? Colors.deepPurple : Colors.white70,
              fontWeight: isMainSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          trailing: Icon(
            isWorkspaceExpanded ? Icons.expand_less : Icons.expand_more,
            color: Colors.white70,
          ),
          onTap: () {
            setState(() {
              isWorkspaceExpanded = !isWorkspaceExpanded;
            });
          },
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Divider(color: Colors.white12, height: 1, thickness: 1),
        ),

        // Subitems for Workspaces
        if (isWorkspaceExpanded) ...[
          _buildSubNavItem('Adstacks', '/workspaces/adstacks'),
          _buildSubNavItem('Finance', '/workspaces/finance'),
        ],
      ],
    );
  }

  Widget _buildSubNavItem(String label, String route) {
    final isSelected = widget.currentRoute == route;

    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Column(
        children: [
          ListTile(
            dense: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            title: Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.deepPurple : Colors.white54,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                fontSize: 13,
              ),
            ),
            onTap: () {
              if (!isSelected) {
                Navigator.pushNamed(context, route);
              }
            },
          ),
          const Divider(color: Colors.white10, height: 1, thickness: 1),
        ],
      ),
    );
  }
}
