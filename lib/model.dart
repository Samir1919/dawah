class Dawah {
  final int albumId;
  final int id;
  final String q;
  final String a;

  Dawah({this.albumId, this.id, this.q, this.a});

  factory Dawah.fromJson(Map<String, dynamic> json) {
    return Dawah(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      q: json['q'] as String,
      a: json['a'] as String,
    );
  }
}
