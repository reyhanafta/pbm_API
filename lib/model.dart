class Blog {
  final String id;
  final String nama;
  final String kota;

  const Blog({
    required this.id,
    required this.nama,
    required this.kota,
  });

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      nama: json['nama'],
      kota: json['kota'],
      id: json['id'],
    );
  }
}
