
class Tests {
  int total;

  Tests({
    this.total,
  });

    Tests.fromJsonMap(Map<String, dynamic> tests) {
    total = tests['total'];
  }

  @override
  String toString() => 'Tests(total: $total)';
}
