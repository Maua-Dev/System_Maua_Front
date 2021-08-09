class ActivityModel {
  final bool delivered;
  final String subject;
  final String activityName;
  final String date;
  final String hour;

  ActivityModel({
    required this.delivered,
    required this.subject,
    required this.activityName,
    required this.date,
    required this.hour,
  });

  factory ActivityModel.newInstance() {
    return ActivityModel(
      delivered: false,
      date: '',
      hour: '',
      activityName: '',
      subject: '',
    );
  }
}
