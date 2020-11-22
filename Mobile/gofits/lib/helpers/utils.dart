class Utils {
  static bool filterExtentionImage(String imageFilePath) {
    var spliter = imageFilePath.split('.');
    var value = spliter[3];
    var condition = value.contains('png');
    return condition;
  }
}
