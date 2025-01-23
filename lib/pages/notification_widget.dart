import 'package:flutter/material.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  _NotificationWidgetState createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  int notificationCount = 0; // Counter for unread notifications
  // method to add notification
  void addNotification() {
    setState(() {
      notificationCount++;
    });
  }

  // method to clear notification
  void clearNotifications() {
    setState(() {
      notificationCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Notification Icon with Badge
        Stack(
          alignment: Alignment.topRight,
          children: [
            Icon(
              Icons.notifications,
              //size: 40
            ),
            if (notificationCount > 0)
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints: BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Text(
                    '$notificationCount',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        ),

        SizedBox(height: 16),

        // Add Notification Button
        ElevatedButton(
          onPressed: addNotification,
          child: Text('Add Notification'),
        ),
        SizedBox(height: 16),
        // Clear Notifications Button
        ElevatedButton(
          onPressed: clearNotifications,
          child: Text('Clear Notifications'),
        ),
      ],
    );
  }
}
