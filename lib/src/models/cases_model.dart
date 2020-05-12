class Cases {
  String casesNew;
  int active;
  int critical;
  int recovered;
  int total;

  Cases({
    this.casesNew,
    this.active,
    this.critical,
    this.recovered,
    this.total,
  });

  Cases.fromJsonMap(Map<String, dynamic> cases) {
    casesNew = cases['new'];
    active = cases['active'];
    critical = cases['critical'];
    recovered = cases['recovered'];
    total = cases['total'];
  }

  @override
  String toString() {
    return 'Cases(casesNew: $casesNew, active: $active, critical: $critical, recovered: $recovered, total: $total)';
  }
}
