class LevelCategory {
  String? categoryName;
  late int totalLevels;
  String? image;
  late int completedLevels;

  LevelCategory(this.categoryName, this.image, this.totalLevels,
      {this.completedLevels = 0});

  _incrementCompletedLevels() {
    completedLevels++;
  }

  _decrementCompletedLevels() {
    completedLevels--;
  }
  
}
