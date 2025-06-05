import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationBell extends StatefulWidget {
  const NotificationBell({super.key});

  @override
  State<NotificationBell> createState() => _NotificationBellState();
}

class _NotificationBellState extends State<NotificationBell> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  void _showNotifications() {
    _overlayEntry = _buildOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _hideNotifications() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _buildOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: _hideNotifications,
        behavior: HitTestBehavior.translucent,
        child: Stack(
          children: [
            Positioned(
              top: offset.dy + size.height + 8,
              right: 16,
              child: CompositedTransformFollower(
                link: _layerLink,
                offset: Offset(-200 + size.width, size.height + 8),
                child: Material(
                  elevation: 6,
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  child: SizedBox(
                    width: 250,
                    child: ListView(
                      padding: const EdgeInsets.all(12),
                      shrinkWrap: true,
                      children: const [
                        ListTile(
                          leading: Icon(Icons.notifications, color: Colors.deepPurple),
                          title: Text("New message from Ayesha"),
                          subtitle: Text("2 minutes ago"),
                        ),
                        ListTile(
                          leading: Icon(Icons.notifications, color: Colors.deepPurple),
                          title: Text("Project deadline updated"),
                          subtitle: Text("10 minutes ago"),
                        ),
                        ListTile(
                          leading: Icon(Icons.notifications, color: Colors.deepPurple),
                          title: Text("Rahul commented on task"),
                          subtitle: Text("30 minutes ago"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: IconButton(
        icon: const FaIcon(FontAwesomeIcons.bell),
        onPressed: () {
          if (_overlayEntry == null) {
            _showNotifications();
          } else {
            _hideNotifications();
          }
        },
      ),
    );
  }
}
