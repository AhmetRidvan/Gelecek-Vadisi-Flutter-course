class Lessonmodel {
  String lessonName;
  double letterValue;
  double creditValue;

  Lessonmodel({
    required this.lessonName,
    required this.letterValue,
    required this.creditValue,
  });

  @override
  String toString() {
    // TODO: implement toString
    return '$lessonName $letterValue $creditValue';
  }
}
