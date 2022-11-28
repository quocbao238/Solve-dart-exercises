class PascalsTriangle {
  // Put your code here

  List<List<int>> rows(int lengthRow) {
    if (lengthRow <= 0) return [];
    return List<List<int>>.generate(lengthRow, (int indexColumn) {
      return List<int>.generate(indexColumn + 1,
          (int indexRow) => generateRows(indexColumn, indexRow));
    });
  }

  int generateRows(int indexColumn, int indexRow) =>
      factorial(indexColumn) ~/
      (factorial(indexRow) * factorial(indexColumn - indexRow));
  int factorial(int val) {
    if (val == 0) return 1;
    return val * factorial(val - 1);
  }
}
