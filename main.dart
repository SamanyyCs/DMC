class DigitalMarksCalculator {
  List<int> subjectMarks;
  int totalPossibleMarks = 500; // Total possible marks

  DigitalMarksCalculator(this.subjectMarks);

  int getTotalMarks() {
    // Calculate total marks
    int totalMarks = 0;
    for (int mark in subjectMarks) {
      totalMarks += mark;
    }
    return totalMarks;
  }

  void showResult() {
    int totalMarks = getTotalMarks();
    print('Result: $totalMarks out of $totalPossibleMarks');

    print('\nSubject-wise Marks:');
    for (int i = 0; i < subjectMarks.length; i++) {
      print('Subject ${i + 1}: ${subjectMarks[i]}');
    }
  }
}

void main() {
  List<int> marksList = [85, 90, 92, 78, 88]; // Sample marks list

  var calculator = DigitalMarksCalculator(marksList);
  calculator.showResult();
}
