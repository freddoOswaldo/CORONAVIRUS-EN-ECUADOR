class Deaths {
  String deathsNew;
  int total;

  Deaths({
    this.deathsNew,
    this.total,
  });

    Deaths.fromJsonMap(Map<String, dynamic> deaths) {
    deathsNew = deaths['new'];
    total = deaths['total'];
  }

  @override
  String toString() => 'Deaths(deathsNew: $deathsNew, total: $total)';
}
