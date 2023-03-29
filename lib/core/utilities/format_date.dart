String formatDate(DateTime date) {
  final List<String> months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];
  int year = date.year;
  String month = months[date.month - 1];
  int day = date.day;
  return "$month $day, $year";
}