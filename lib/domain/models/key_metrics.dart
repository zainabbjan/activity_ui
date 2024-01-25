class KeyMetrics {
  final String imagePath;
  final String title;
  final String duration;
  final String change;
  final String iconPath;
  final bool selected;

  KeyMetrics(
      {required this.selected,
      required this.imagePath,
      required this.title,
      required this.duration,
      required this.change,
      required this.iconPath});
}
