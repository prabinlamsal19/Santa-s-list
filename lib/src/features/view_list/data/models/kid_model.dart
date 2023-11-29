class NotificationModel {
  NotificationModel(
      {required this.id,
      required this.isRead,
      required this.text,
      required this.time,
      required this.agoTime});
  final String id;
  final String text;
  final Duration agoTime;
  final bool isRead;
  final String time;
}
