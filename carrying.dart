double Function(double) calculateTriangleArea(double base) {
  return (double height) {
    return (base * height) / 2;
  };
}

void main() {
  final calculateTriangle = calculateTriangleArea(6);
  final area1 = calculateTriangle(4);
  final area2 = calculateTriangle(5);

  print('area1 is $area1');
  print('area2 is $area2');
}
